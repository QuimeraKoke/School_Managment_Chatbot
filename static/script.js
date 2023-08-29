const questionInput = document.getElementById('question-input');
const submitButton = document.getElementById('submit-button');
const chatBox = document.getElementById('chat-box');

submitButton.addEventListener('click', () => {
    console.log('Submit button clicked');
    sendMessage();
});

questionInput.addEventListener('keydown', (event) => {
    if (event.key === 'Enter') {
        console.log('Enter key pressed');
        sendMessage();
    }
});


const sendMessage = () => {
    const question = questionInput.value.toLowerCase();
    addUserMessage(question);
    processQuestion(question);
    questionInput.value = '';
}


const schedule = {
    'matematica': ['Lunes', 'miercoles', 'Viernes'],
    'lenguaje': ['Martes', 'Jueves'],
    'ingles': ['Miercoles', 'Viernes'],
    'historia': ['Martes', 'Jueves'],
};

submitButton.addEventListener('click', () => {
    const question = questionInput.value.toLowerCase();
    addUserMessage(question);
    processQuestion(question);
    questionInput.value = ''; 
});

function addUserMessage(message) {
    const userMessage = createMessageElement(message, 'user-message', 'fas fa-user');
    chatBox.appendChild(userMessage);
    chatBox.scrollTop = chatBox.scrollHeight; 
}

function addBotMessage(message) {
    const botMessage = createMessageElement(message, 'bot-message', 'fas fa-robot');
    chatBox.appendChild(botMessage);
    chatBox.scrollTop = chatBox.scrollHeight; 
}

function createMessageElement(content, className, iconClass) {
    const messageElement = document.createElement('div');
    messageElement.className = `message ${className}`;
    
    const icon = document.createElement('i');
    icon.className = iconClass;

    const contentDiv = document.createElement('div');
    contentDiv.textContent = content;

    messageElement.appendChild(icon);
    messageElement.appendChild(contentDiv);

    return messageElement;
}

function processQuestion(question) {
    const subjects = Object.keys(schedule);
    const matchingSubjects = subjects.filter(subject => question.includes(subject));

    let answer = '';

    if (matchingSubjects.length > 0) {
        answer = 'Tienes ' + matchingSubjects.join(', ') + ' los dias: ';

        const days = [];
        matchingSubjects.forEach(subject => {
            days.push(...schedule[subject]);
        });

        answer += [...new Set(days)].join(', ');
        addBotMessage(answer);
    } else {
        answer = 'No encontre ninguna materia coincidente en tu pregunta.';
        addBotMessage(answer);
    }
}

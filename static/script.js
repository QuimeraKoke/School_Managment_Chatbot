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
    // POST to /api/question
    fetch('/api/question', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify({ question }),
    })
    .then(response => response.json())
    .then(data => {
        console.log('Success:', data);
        addBotMessage(data.answer);
    })
    .catch((error) => {
        console.error('Error:', error);
    });
}

window.addEventListener('DOMContentLoaded', () => {
    const toast = document.getElementById('success-toast');
    if (toast) {
        toast.classList.add('show');
        setTimeout(() => {
            toast.classList.remove('show');
        }, 4000); // disappears after 4 seconds
    }
});
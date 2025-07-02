document.addEventListener("DOMContentLoaded", function() {
    const faqItems = document.querySelectorAll(".faq-item");

    faqItems.forEach(item => {
        const question = item.querySelector(".faq-question");
        const answer = item.querySelector(".faq-answer");

        question.addEventListener("click", function() {
            // Hide all answers first
            faqItems.forEach(otherItem => {
                const otherAnswer = otherItem.querySelector(".faq-answer");
                if (otherAnswer !== answer) {
                    otherAnswer.style.display = "none";
                    otherAnswer.style.maxHeight = "0";
                    otherAnswer.style.opacity = "0";
                }
            });

            // Toggle the clicked answer
            if (answer.style.display === "block") {
                answer.style.display = "none";
                answer.style.maxHeight = "0";
                answer.style.opacity = "0";
            } else {
                answer.style.display = "block";
                answer.style.maxHeight = "100px";
                answer.style.opacity = "1";
            }
        });
    });
});

// JavaScript for the "Load More" and "Show Less" functionality

document.addEventListener("DOMContentLoaded", function () {
    const loadMoreButton = document.querySelector(".load-more");
    const hiddenTestimonials = document.querySelectorAll(".testimonial-hidden");
    const showLessButton = document.querySelector(".show-less");


    loadMoreButton.addEventListener("click", function () {
        hiddenTestimonials.forEach(testimonial => {
            testimonial.style.display = "block";
            testimonial.classList.remove("testimonial-hidden");
        });

        loadMoreButton.style.display = "none"; // Hide "Load More" button
        showLessButton.style.display = "block"; // Keep Show Less centered
    });

    showLessButton.addEventListener("click", function () {
        hiddenTestimonials.forEach(testimonial => {
            testimonial.style.display = "none";
            testimonial.classList.add("testimonial-hidden"); // Reapply hidden state
        });

        showLessButton.style.display = "none"; // Hide Show Less
        loadMoreButton.style.display = "block"; // Show Load More again
    });
});

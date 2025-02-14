<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="fa">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>اسلاید شو تصاویر</title>
    <style>
        body {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-color: #f0f0f0;
            font-family: 'Arial', sans-serif;
        }
        .slideshow-container {
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        .slideshow {
            width: 400px;
            height: 300px;
            overflow: hidden;
            position: relative;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
        }
        .slideshow img {
            width: 100%;
            height: 100%;
            position: absolute;
            top: 0;
            left: 0;
            opacity: 0;
            transition: opacity 1s ease-in-out;
            border-radius: 10px;
        }
        .slideshow img.active {
            opacity: 1;
        }
        .controls {
            display: flex;
            gap: 10px;
        }
        .controls button {
            padding: 10px 20px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
            transition: background-color 0.3s ease, box-shadow 0.3s ease;
        }
        .controls button:hover {
            background-color: #0056b3;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
        }
        .controls button:active {
            background-color: #004494;
        }
    </style>
</head>
<body>
    <div class="slideshow-container">
        <div class="slideshow">
            <img src="https://via.placeholder.com/400x300?text=تصویر+1" alt="تصویر 1" class="active">
            <img src="https://via.placeholder.com/400x300?text=تصویر+2" alt="تصویر 2">
            <img src="https://via.placeholder.com/400x300?text=تصویر+3" alt="تصویر 3">
        </div>
        <div class="controls">
            <button id="prev">عکس قبلی</button>
            <button id="next">عکس بعدی</button>
        </div>
    </div>
    <script>
        let currentIndex = 0;
        const images = document.querySelectorAll('.slideshow img');
        const prevButton = document.getElementById('prev');
        const nextButton = document.getElementById('next');

        function showImage(index) {
            images[currentIndex].classList.remove('active');
            currentIndex = (index + images.length) % images.length;
            images[currentIndex].classList.add('active');
        }

        function showNextImage() {
            showImage(currentIndex + 1);
        }

        function showPrevImage() {
            showImage(currentIndex - 1);
        }

        setInterval(showNextImage, 3000);
        nextButton.addEventListener('click', showNextImage);
        prevButton.addEventListener('click', showPrevImage);
    </script>
</body>
</html>

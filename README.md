# EAUT CHATBOT
## Giới thiệu
Hệ thống Chatbot được phát triển nhằm hỗ trợ tự động giải đáp các câu hỏi thường gặp của sinh viên trong Khoa Công nghệ Thông tin, đặc biệt là sinh viên năm nhất. Chatbot có thể trả lời các nội dung như: lịch học, môn học, quy định đào tạo, hướng dẫn đăng ký tín chỉ, thủ tục giấy tờ...

Chatbot hoạt động trên nền tảng web và tích hợp khả năng xử lý ngôn ngữ tự nhiên tiếng Việt để mang lại trải nghiệm tương tác tự nhiên, chính xác.

## Demo
<video width="640" height="360" controls>
  <source src="./demo/2025-05-12 10-08-23.mp4" type="video/x-matroska">
  Trình duyệt của bạn không hỗ trợ nhúng video.
</video>

## Tổng quan
Các công cụ, thư viện chính sử dụng trong dự án

- Frontend: NextJS, Javscripts
- Backend: FastAPI, Python
- AI Engine: Rasa, PhoBERT, Transformer, LSTM, CNN

## Cách thức hoạt động
### 1. Tiếp nhận câu hỏi người dùng
Người dùng (sinh viên) nhập câu hỏi vào giao diện chatbot (Next.js frontend).
Ví dụ: "Em muốn biết thời gian đăng ký học phần là khi nào?"

### 2. Tiền xử lý và hiểu ngữ nghĩa (NLP)
Câu hỏi được gửi đến server (FastAPI Backend).

Pretrained PhoBERT thực hiện trích xuất embedding (biểu diễn ngữ nghĩa) của câu hỏi.

### 3. Tìm kiếm thông tin phù hợp
Tìm ra câu trả lời gần nghĩa nhất với câu hỏi đầu vào.

### 4. Trả lời người dùng
Chatbot hiển thị câu trả lời được tìm thấy lên giao diện người dùng.

## Phiên bản tiếp theo (đang phát triển)
- Lưu log hội thoại để cải thiện chatbot về sau.
- Có thể gắn thêm khả năng học liên tục (continual learning)
- Phát triển thành một hệ thống RAG chatbot sử dụng model Deepseek
...

## Dataset
Dataset được thu thập trên internet và được tổng hợp lại từ các quy định, nội quy, các thông tin của trường.
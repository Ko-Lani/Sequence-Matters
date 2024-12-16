# from moviepy.editor import VideoFileClip

# Input and output file paths

for object in ['chair', 'drums', 'ficus', 'hotdog', 'mic', 'ship']:
    input_path = f"/hdd_1/laniko/AAAI/ProPainter_website/assets/video_blender/supergaussian/{object}_SuperGaussian.mov"
    output_path = f"/hdd_1/laniko/AAAI/ProPainter_website/assets/video_blender/supergaussian/supergaussian_{object}.mp4"

    # Load video file
    clip = VideoFileClip(input_path)

    # Set FPS to 5
    clip = clip.set_fps(10)

    # Write output video as MP4
    clip.write_videofile(output_path, codec="libx264", fps=5)


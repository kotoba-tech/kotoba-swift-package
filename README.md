This is a Swift Package Manager package for kotoba_tts.

### Integration instructions:
1) inside Xcode, in your project settings, open Package Dependencies
2) click add
3) paste in a link to this repo
4) use the latest release
5) add kotoba_tts to the targets that need it

Once it’s integrated, there are two methods for TTS:
1) `int kotoba_generate_tts(const char* model1_path, const char* model2_path, const char* decoder_path, const char* input_text, const char* language_code, int cli_speaker_id, ChunkCallback chunk_callback)`: call this to start TTS. `ChunkCallback` will be called with audio samples.
2) `void kotoba_warm_tts(const char* model1_path, const char* model2_path, const char* decoder_path)`. call this to warm the implementation after installing the app. this will improve the time to first audio when you call kotoba_generate_tts for the first time after installing your app.

### Building the package:
1) run `build-package.sh 1.0.0` (or whatever the new version will be)
2) commit and push the changes
3) create a new release for that version and upload the framework .zip
4) now you can point SPM at the repo to integrate it with your Xcode project

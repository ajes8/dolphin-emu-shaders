// For games that are 16:9 and letterboxed to fit a 4:3 screen, this shader will
// help by zooming the image in to fill a widescreen monitor.
//
// To use, set the aspect ratio to force 16:9 in the graphics option, then
// enable this shader in Post-Processing Effects.

void main() {
    float2 coords = GetCoordinates() - float2(0.5, 0.5);
    float2 new_coords = float2(coords.x, coords.y*3/4);
    float2 sample_coords = new_coords + float2(0.5, 0.5);
    SetOutput(SampleLocation(sample_coords));
}

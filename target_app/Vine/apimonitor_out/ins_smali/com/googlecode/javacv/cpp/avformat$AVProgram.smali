.class public Lcom/googlecode/javacv/cpp/avformat$AVProgram;
.super Lcom/googlecode/javacpp/Pointer;
.source "avformat.java"
.method static constructor <clinit>()V
.registers 0
invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V
invoke-direct {p0}, Lcom/googlecode/javacv/cpp/avformat$AVProgram;->allocate()V
return-void
.end method
.method public constructor <init>(I)V
.registers 2
invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V
invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/avformat$AVProgram;->allocateArray(I)V
return-void
.end method
.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
.registers 2
invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V
return-void
.end method
.method private native allocate()V
.end method
.method private native allocateArray(I)V
.end method
.method public native discard()I
.end method
.method public native discard(I)Lcom/googlecode/javacv/cpp/avformat$AVProgram;
.end method
.method public native end_time()J
.end method
.method public native end_time(J)Lcom/googlecode/javacv/cpp/avformat$AVProgram;
.end method
.method public native flags()I
.end method
.method public native flags(I)Lcom/googlecode/javacv/cpp/avformat$AVProgram;
.end method
.method public native id()I
.end method
.method public native id(I)Lcom/googlecode/javacv/cpp/avformat$AVProgram;
.end method
.method public native metadata(Lcom/googlecode/javacv/cpp/avutil$AVDictionary;)Lcom/googlecode/javacv/cpp/avformat$AVProgram;
.end method
.method public native metadata()Lcom/googlecode/javacv/cpp/avutil$AVDictionary;
.end method
.method public native nb_stream_indexes()I
.end method
.method public native nb_stream_indexes(I)Lcom/googlecode/javacv/cpp/avformat$AVProgram;
.end method
.method public native pcr_pid()I
.end method
.method public native pcr_pid(I)Lcom/googlecode/javacv/cpp/avformat$AVProgram;
.end method
.method public native pmt_pid()I
.end method
.method public native pmt_pid(I)Lcom/googlecode/javacv/cpp/avformat$AVProgram;
.end method
.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
.registers 3
invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/avformat$AVProgram;->position(I)Lcom/googlecode/javacv/cpp/avformat$AVProgram;
move-result-object v0
return-object v0
.end method
.method public position(I)Lcom/googlecode/javacv/cpp/avformat$AVProgram;
.registers 3
invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;
move-result-object v0
check-cast v0, Lcom/googlecode/javacv/cpp/avformat$AVProgram;
return-object v0
.end method
.method public native program_num()I
.end method
.method public native program_num(I)Lcom/googlecode/javacv/cpp/avformat$AVProgram;
.end method
.method public native pts_wrap_behavior()I
.end method
.method public native pts_wrap_behavior(I)Lcom/googlecode/javacv/cpp/avformat$AVProgram;
.end method
.method public native pts_wrap_reference()J
.end method
.method public native pts_wrap_reference(J)Lcom/googlecode/javacv/cpp/avformat$AVProgram;
.end method
.method public native start_time()J
.end method
.method public native start_time(J)Lcom/googlecode/javacv/cpp/avformat$AVProgram;
.end method
.method public native stream_index()Lcom/googlecode/javacpp/IntPointer;
.end method
.method public native stream_index(Lcom/googlecode/javacpp/IntPointer;)Lcom/googlecode/javacv/cpp/avformat$AVProgram;
.end method
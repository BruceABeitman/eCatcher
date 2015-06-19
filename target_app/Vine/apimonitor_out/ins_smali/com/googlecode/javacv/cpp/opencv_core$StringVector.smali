.class public Lcom/googlecode/javacv/cpp/opencv_core$StringVector;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_core.java"
.method static constructor <clinit>()V
.registers 0
invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V
invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$StringVector;->allocate()V
return-void
.end method
.method public constructor <init>(J)V
.registers 3
invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V
invoke-direct {p0, p1, p2}, Lcom/googlecode/javacv/cpp/opencv_core$StringVector;->allocate(J)V
return-void
.end method
.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
.registers 2
invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V
return-void
.end method
.method public varargs constructor <init>([Ljava/lang/String;)V
.registers 4
array-length v0, p1
int-to-long v0, v0
invoke-direct {p0, v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$StringVector;-><init>(J)V
invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$StringVector;->put([Ljava/lang/String;)Lcom/googlecode/javacv/cpp/opencv_core$StringVector;
return-void
.end method
.method private native allocate()V
.end method
.method private native allocate(J)V
.parameter
.end parameter
.end method
.method public native get(J)Ljava/lang/String;
.parameter
.end parameter
.end method
.method public native put(JLjava/lang/String;)Lcom/googlecode/javacv/cpp/opencv_core$StringVector;
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public varargs put([Ljava/lang/String;)Lcom/googlecode/javacv/cpp/opencv_core$StringVector;
.registers 7
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$StringVector;->size()J
move-result-wide v1
array-length v3, p1
int-to-long v3, v3
cmp-long v1, v1, v3
if-gez v1, :cond_f
array-length v1, p1
int-to-long v1, v1
invoke-virtual {p0, v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core$StringVector;->resize(J)V
:cond_f
const/4 v0, 0x0
:goto_10
array-length v1, p1
if-ge v0, v1, :cond_1c
int-to-long v1, v0
aget-object v3, p1, v0
invoke-virtual {p0, v1, v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core$StringVector;->put(JLjava/lang/String;)Lcom/googlecode/javacv/cpp/opencv_core$StringVector;
add-int/lit8 v0, v0, 0x1
goto :goto_10
:cond_1c
return-object p0
.end method
.method public native resize(J)V
.parameter
.end parameter
.end method
.method public native size()J
.end method
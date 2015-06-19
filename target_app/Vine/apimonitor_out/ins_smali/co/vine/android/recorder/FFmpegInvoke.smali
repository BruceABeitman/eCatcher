.class public Lco/vine/android/recorder/FFmpegInvoke;
.super Ljava/lang/Object;
.source "FFmpegInvoke.java"
.field private mPath:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lco/vine/android/recorder/FFmpegInvoke;->mPath:Ljava/lang/String;
return-void
.end method
.method private native run(Ljava/lang/String;[Ljava/lang/String;)I
.end method
.method public native YUVtoRBG([I[BII)V
.end method
.method public run([Ljava/lang/String;)I
.registers 3
iget-object v0, p0, Lco/vine/android/recorder/FFmpegInvoke;->mPath:Ljava/lang/String;
invoke-direct {p0, v0, p1}, Lco/vine/android/recorder/FFmpegInvoke;->run(Ljava/lang/String;[Ljava/lang/String;)I
move-result v0
return v0
.end method
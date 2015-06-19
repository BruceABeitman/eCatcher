.class  Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;
.super Ljava/lang/Object;
.source "AudioAsynCompressMp3.java"
.field private info:Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;
.field private listener:Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Listener;
.field private priority:I
.field private srcPath:Ljava/lang/String;
.method constructor <init>(Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Listener;Ljava/lang/String;I)V
.registers 7
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v1, p0, Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;->info:Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;
iput-object v1, p0, Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;->srcPath:Ljava/lang/String;
const/4 v0, 0x0
iput v0, p0, Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;->priority:I
iput-object v1, p0, Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;->listener:Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Listener;
iput-object p1, p0, Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;->info:Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;
iput p4, p0, Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;->priority:I
iput-object p3, p0, Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;->srcPath:Ljava/lang/String;
iput-object p2, p0, Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;->listener:Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Listener;
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;)I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;->priority:I
return v0
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;->srcPath:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$2(Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;)Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;->info:Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;
return-object v0
.end method
.method static synthetic access$3(Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;)Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Listener;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;->listener:Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Listener;
return-object v0
.end method
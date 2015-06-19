.class  Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$1;
.super Ljava/lang/Object;
.source "AudioAsynCompressMp3.java"
.implements Ljava/util/Comparator;
.field final synthetic this$0:Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3;
.method constructor <init>(Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$1;->this$0:Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public compare(Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;)I
.registers 5
#getter for: Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;->priority:I
invoke-static {p2}, Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;->access$0(Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;)I
move-result v0
#getter for: Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;->priority:I
invoke-static {p1}, Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;->access$0(Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;)I
move-result v1
if-le v0, v1, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
#getter for: Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;->priority:I
invoke-static {p2}, Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;->access$0(Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;)I
move-result v0
#getter for: Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;->priority:I
invoke-static {p1}, Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;->access$0(Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;)I
move-result v1
if-ge v0, v1, :cond_18
const/4 v0, -0x1
goto :goto_b
:cond_18
const/4 v0, 0x0
goto :goto_b
.end method
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 4
check-cast p1, Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;
check-cast p2, Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;
invoke-virtual {p0, p1, p2}, Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$1;->compare(Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;)I
move-result v0
return v0
.end method
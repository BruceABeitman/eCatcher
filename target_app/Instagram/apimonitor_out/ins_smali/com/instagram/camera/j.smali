.class final Lcom/instagram/camera/j;
.super Ljava/lang/Object;
.source "CameraUtil.java"
.field private a:Ljava/text/SimpleDateFormat;
.field private b:J
.field private c:I
.method public constructor <init>(Ljava/lang/String;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/text/SimpleDateFormat;
invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
iput-object v0, p0, Lcom/instagram/camera/j;->a:Ljava/text/SimpleDateFormat;
return-void
.end method
.method public final a(J)Ljava/lang/String;
.registers 10
const-wide/16 v5, 0x3e8
new-instance v0, Ljava/util/Date;
invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V
iget-object v1, p0, Lcom/instagram/camera/j;->a:Ljava/text/SimpleDateFormat;
invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v0
div-long v1, p1, v5
iget-wide v3, p0, Lcom/instagram/camera/j;->b:J
div-long/2addr v3, v5
cmp-long v1, v1, v3
if-nez v1, :cond_36
iget v1, p0, Lcom/instagram/camera/j;->c:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lcom/instagram/camera/j;->c:I
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "_"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lcom/instagram/camera/j;->c:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_35
return-object v0
:cond_36
iput-wide p1, p0, Lcom/instagram/camera/j;->b:J
const/4 v1, 0x0
iput v1, p0, Lcom/instagram/camera/j;->c:I
goto :goto_35
.end method
.class  Lcom/blackberry/ids/NotificationCallback$1;
.super Ljava/lang/Object;
.source "NotificationCallback.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:I
.field final synthetic b:Ljava/lang/String;
.field final synthetic c:I
.field final synthetic d:Lcom/blackberry/ids/NotificationCallback;
.method constructor <init>(Lcom/blackberry/ids/NotificationCallback;ILjava/lang/String;I)V
.registers 5
iput-object p1, p0, Lcom/blackberry/ids/NotificationCallback$1;->d:Lcom/blackberry/ids/NotificationCallback;
iput p2, p0, Lcom/blackberry/ids/NotificationCallback$1;->a:I
iput-object p3, p0, Lcom/blackberry/ids/NotificationCallback$1;->b:Ljava/lang/String;
iput p4, p0, Lcom/blackberry/ids/NotificationCallback$1;->c:I
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 11
const/4 v9, 0x1
const/4 v8, 0x0
const-string v0, "enter NotificationCallback type=%d info=%s notification=%d"
const/4 v1, 0x3
new-array v1, v1, [Ljava/lang/Object;
iget v2, p0, Lcom/blackberry/ids/NotificationCallback$1;->a:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v1, v8
iget-object v2, p0, Lcom/blackberry/ids/NotificationCallback$1;->b:Ljava/lang/String;
aput-object v2, v1, v9
const/4 v2, 0x2
iget v3, p0, Lcom/blackberry/ids/NotificationCallback$1;->c:I
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Object;[Ljava/lang/Object;)V
:try_start_1f
iget-object v0, p0, Lcom/blackberry/ids/NotificationCallback$1;->d:Lcom/blackberry/ids/NotificationCallback;
iget-object v1, p0, Lcom/blackberry/ids/NotificationCallback$1;->d:Lcom/blackberry/ids/NotificationCallback;
iget-wide v1, v1, Lcom/blackberry/ids/NotificationCallback;->a:J
iget-object v3, p0, Lcom/blackberry/ids/NotificationCallback$1;->d:Lcom/blackberry/ids/NotificationCallback;
iget-wide v3, v3, Lcom/blackberry/ids/NotificationCallback;->b:J
iget v5, p0, Lcom/blackberry/ids/NotificationCallback$1;->a:I
iget-object v6, p0, Lcom/blackberry/ids/NotificationCallback$1;->b:Ljava/lang/String;
iget v7, p0, Lcom/blackberry/ids/NotificationCallback$1;->c:I
invoke-static/range {v0 .. v7}, Lcom/blackberry/ids/NotificationCallback;->a(Lcom/blackberry/ids/NotificationCallback;JJILjava/lang/String;I)V
:try_end_32
.catchall {:try_start_1f .. :try_end_32} :catchall_42
const-string v0, "exit NotificationCallback type = %d"
new-array v1, v9, [Ljava/lang/Object;
iget v2, p0, Lcom/blackberry/ids/NotificationCallback$1;->a:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v1, v8
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Object;[Ljava/lang/Object;)V
return-void
:catchall_42
move-exception v0
const-string v1, "exit NotificationCallback type = %d"
new-array v2, v9, [Ljava/lang/Object;
iget v3, p0, Lcom/blackberry/ids/NotificationCallback$1;->a:I
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v8
invoke-static {v1, v2}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Object;[Ljava/lang/Object;)V
throw v0
.end method
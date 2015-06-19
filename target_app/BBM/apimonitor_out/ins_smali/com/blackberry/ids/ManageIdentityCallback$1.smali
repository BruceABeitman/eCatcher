.class  Lcom/blackberry/ids/ManageIdentityCallback$1;
.super Ljava/lang/Object;
.source "ManageIdentityCallback.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:I
.field final synthetic b:I
.field final synthetic c:Lcom/blackberry/ids/ManageIdentityCallback;
.method constructor <init>(Lcom/blackberry/ids/ManageIdentityCallback;II)V
.registers 4
iput-object p1, p0, Lcom/blackberry/ids/ManageIdentityCallback$1;->c:Lcom/blackberry/ids/ManageIdentityCallback;
iput p2, p0, Lcom/blackberry/ids/ManageIdentityCallback$1;->a:I
iput p3, p0, Lcom/blackberry/ids/ManageIdentityCallback$1;->b:I
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 10
const/4 v8, 0x1
const/4 v7, 0x0
const-string v0, "enter ManageIdentityCallback request_id=%d level=%d"
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
iget v2, p0, Lcom/blackberry/ids/ManageIdentityCallback$1;->a:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v1, v7
iget v2, p0, Lcom/blackberry/ids/ManageIdentityCallback$1;->b:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v1, v8
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
:try_start_1a
iget-object v0, p0, Lcom/blackberry/ids/ManageIdentityCallback$1;->c:Lcom/blackberry/ids/ManageIdentityCallback;
iget-object v1, p0, Lcom/blackberry/ids/ManageIdentityCallback$1;->c:Lcom/blackberry/ids/ManageIdentityCallback;
iget-wide v1, v1, Lcom/blackberry/ids/ManageIdentityCallback;->a:J
iget-object v3, p0, Lcom/blackberry/ids/ManageIdentityCallback$1;->c:Lcom/blackberry/ids/ManageIdentityCallback;
iget-wide v3, v3, Lcom/blackberry/ids/ManageIdentityCallback;->b:J
iget v5, p0, Lcom/blackberry/ids/ManageIdentityCallback$1;->a:I
iget v6, p0, Lcom/blackberry/ids/ManageIdentityCallback$1;->b:I
invoke-static/range {v0 .. v6}, Lcom/blackberry/ids/ManageIdentityCallback;->a(Lcom/blackberry/ids/ManageIdentityCallback;JJII)V
:try_end_2b
.catchall {:try_start_1a .. :try_end_2b} :catchall_3b
const-string v0, "exit ManageIdentityCallback request_id=%d"
new-array v1, v8, [Ljava/lang/Object;
iget v2, p0, Lcom/blackberry/ids/ManageIdentityCallback$1;->a:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v1, v7
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
return-void
:catchall_3b
move-exception v0
const-string v1, "exit ManageIdentityCallback request_id=%d"
new-array v2, v8, [Ljava/lang/Object;
iget v3, p0, Lcom/blackberry/ids/ManageIdentityCallback$1;->a:I
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v7
invoke-static {v1, v2}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
throw v0
.end method
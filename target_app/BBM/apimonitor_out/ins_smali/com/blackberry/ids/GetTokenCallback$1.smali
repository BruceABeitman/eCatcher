.class  Lcom/blackberry/ids/GetTokenCallback$1;
.super Ljava/lang/Object;
.source "GetTokenCallback.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:I
.field final synthetic b:[Lcom/blackberry/ids/TokenParam;
.field final synthetic c:Ljava/lang/String;
.field final synthetic d:Lcom/blackberry/ids/GetTokenCallback;
.method constructor <init>(Lcom/blackberry/ids/GetTokenCallback;I[Lcom/blackberry/ids/TokenParam;Ljava/lang/String;)V
.registers 5
iput-object p1, p0, Lcom/blackberry/ids/GetTokenCallback$1;->d:Lcom/blackberry/ids/GetTokenCallback;
iput p2, p0, Lcom/blackberry/ids/GetTokenCallback$1;->a:I
iput-object p3, p0, Lcom/blackberry/ids/GetTokenCallback$1;->b:[Lcom/blackberry/ids/TokenParam;
iput-object p4, p0, Lcom/blackberry/ids/GetTokenCallback$1;->c:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 11
const/4 v9, 0x1
const/4 v8, 0x0
const-string v0, "enter GetTokenCallback request_id=%d"
new-array v1, v9, [Ljava/lang/Object;
iget v2, p0, Lcom/blackberry/ids/GetTokenCallback$1;->a:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v1, v8
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->i(Ljava/lang/Object;[Ljava/lang/Object;)V
const-string v0, "enter GetTokenCallback request_id=%d token_params=%s"
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
iget v2, p0, Lcom/blackberry/ids/GetTokenCallback$1;->a:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v1, v8
iget-object v2, p0, Lcom/blackberry/ids/GetTokenCallback$1;->b:[Lcom/blackberry/ids/TokenParam;
aput-object v2, v1, v9
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
:try_start_25
iget-object v0, p0, Lcom/blackberry/ids/GetTokenCallback$1;->d:Lcom/blackberry/ids/GetTokenCallback;
iget-object v1, p0, Lcom/blackberry/ids/GetTokenCallback$1;->d:Lcom/blackberry/ids/GetTokenCallback;
iget-wide v1, v1, Lcom/blackberry/ids/GetTokenCallback;->a:J
iget-object v3, p0, Lcom/blackberry/ids/GetTokenCallback$1;->d:Lcom/blackberry/ids/GetTokenCallback;
iget-wide v3, v3, Lcom/blackberry/ids/GetTokenCallback;->b:J
iget v5, p0, Lcom/blackberry/ids/GetTokenCallback$1;->a:I
iget-object v6, p0, Lcom/blackberry/ids/GetTokenCallback$1;->c:Ljava/lang/String;
iget-object v7, p0, Lcom/blackberry/ids/GetTokenCallback$1;->b:[Lcom/blackberry/ids/TokenParam;
invoke-static/range {v0 .. v7}, Lcom/blackberry/ids/GetTokenCallback;->a(Lcom/blackberry/ids/GetTokenCallback;JJILjava/lang/String;[Lcom/blackberry/ids/TokenParam;)V
:try_end_38
.catchall {:try_start_25 .. :try_end_38} :catchall_48
const-string v0, "exit GetTokenCallback request_id=%d"
new-array v1, v9, [Ljava/lang/Object;
iget v2, p0, Lcom/blackberry/ids/GetTokenCallback$1;->a:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v1, v8
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
return-void
:catchall_48
move-exception v0
const-string v1, "exit GetTokenCallback request_id=%d"
new-array v2, v9, [Ljava/lang/Object;
iget v3, p0, Lcom/blackberry/ids/GetTokenCallback$1;->a:I
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v8
invoke-static {v1, v2}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
throw v0
.end method
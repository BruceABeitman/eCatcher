.class  Lcom/blackberry/ids/GetPropertiesCallback$1;
.super Ljava/lang/Object;
.source "GetPropertiesCallback.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:I
.field final synthetic b:[Lcom/blackberry/ids/Property;
.field final synthetic c:Lcom/blackberry/ids/GetPropertiesCallback;
.method constructor <init>(Lcom/blackberry/ids/GetPropertiesCallback;I[Lcom/blackberry/ids/Property;)V
.registers 4
iput-object p1, p0, Lcom/blackberry/ids/GetPropertiesCallback$1;->c:Lcom/blackberry/ids/GetPropertiesCallback;
iput p2, p0, Lcom/blackberry/ids/GetPropertiesCallback$1;->a:I
iput-object p3, p0, Lcom/blackberry/ids/GetPropertiesCallback$1;->b:[Lcom/blackberry/ids/Property;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 10
const/4 v8, 0x1
const/4 v7, 0x0
const-string v0, "enter GetPropertiesCallback request_id=%d properties=%s"
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
iget v2, p0, Lcom/blackberry/ids/GetPropertiesCallback$1;->a:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v1, v7
iget-object v2, p0, Lcom/blackberry/ids/GetPropertiesCallback$1;->b:[Lcom/blackberry/ids/Property;
aput-object v2, v1, v8
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
:try_start_16
iget-object v0, p0, Lcom/blackberry/ids/GetPropertiesCallback$1;->c:Lcom/blackberry/ids/GetPropertiesCallback;
iget-object v1, p0, Lcom/blackberry/ids/GetPropertiesCallback$1;->c:Lcom/blackberry/ids/GetPropertiesCallback;
iget-wide v1, v1, Lcom/blackberry/ids/GetPropertiesCallback;->a:J
iget-object v3, p0, Lcom/blackberry/ids/GetPropertiesCallback$1;->c:Lcom/blackberry/ids/GetPropertiesCallback;
iget-wide v3, v3, Lcom/blackberry/ids/GetPropertiesCallback;->b:J
iget v5, p0, Lcom/blackberry/ids/GetPropertiesCallback$1;->a:I
iget-object v6, p0, Lcom/blackberry/ids/GetPropertiesCallback$1;->b:[Lcom/blackberry/ids/Property;
invoke-static/range {v0 .. v6}, Lcom/blackberry/ids/GetPropertiesCallback;->a(Lcom/blackberry/ids/GetPropertiesCallback;JJI[Lcom/blackberry/ids/Property;)V
:try_end_27
.catchall {:try_start_16 .. :try_end_27} :catchall_37
const-string v0, "exit GetPropertiesCallback request_id=%d"
new-array v1, v8, [Ljava/lang/Object;
iget v2, p0, Lcom/blackberry/ids/GetPropertiesCallback$1;->a:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v1, v7
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
return-void
:catchall_37
move-exception v0
const-string v1, "exit GetPropertiesCallback request_id=%d"
new-array v2, v8, [Ljava/lang/Object;
iget v3, p0, Lcom/blackberry/ids/GetPropertiesCallback$1;->a:I
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v7
invoke-static {v1, v2}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
throw v0
.end method
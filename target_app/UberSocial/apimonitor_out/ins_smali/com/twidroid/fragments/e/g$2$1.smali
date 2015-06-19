.class  Lcom/twidroid/fragments/e/g$2$1;
.super Lcom/twidroid/a/a;
.source "SourceFile"
.field final synthetic b:Lcom/twidroid/fragments/e/g$2;
.method constructor <init>(Lcom/twidroid/fragments/e/g$2;Lcom/twidroid/fragments/e/g;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/fragments/e/g$2$1;->b:Lcom/twidroid/fragments/e/g$2;
invoke-direct {p0, p2}, Lcom/twidroid/a/a;-><init>(Lcom/twidroid/fragments/base/o;)V
return-void
.end method
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Ljava/lang/Void;
invoke-virtual {p0, p1}, Lcom/twidroid/fragments/e/g$2$1;->a([Ljava/lang/Void;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method protected varargs a([Ljava/lang/Void;)Ljava/util/List;
.registers 8
:try_start_0
iget-object v0, p0, Lcom/twidroid/fragments/e/g$2$1;->b:Lcom/twidroid/fragments/e/g$2;
iget-object v0, v0, Lcom/twidroid/fragments/e/g$2;->c:Lcom/twidroid/fragments/e/g;
invoke-static {v0}, Lcom/twidroid/fragments/e/g;->G(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/UberSocialApplication;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
const/4 v1, 0x1
iget-object v2, p0, Lcom/twidroid/fragments/e/g$2$1;->b:Lcom/twidroid/fragments/e/g$2;
iget-object v2, v2, Lcom/twidroid/fragments/e/g$2;->c:Lcom/twidroid/fragments/e/g;
invoke-static {v2}, Lcom/twidroid/fragments/e/g;->F(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/UberSocialApplication;
move-result-object v2
invoke-virtual {v2}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;
move-result-object v2
const/4 v3, 0x0
const-wide/16 v4, -0x1
invoke-virtual/range {v0 .. v5}, Lcom/twidroid/b/a/b;->a(ZLcom/twidroid/d/v;ZJ)Ljava/util/List;
:try_end_1f
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_21
:goto_1f
const/4 v0, 0x0
return-object v0
:catch_21
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_1f
.end method
.method protected c()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
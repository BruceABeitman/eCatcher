.class  Lcom/twidroid/fragments/e/ab$10;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Ljava/lang/String;
.field final synthetic b:Lcom/twidroid/fragments/e/ab;
.method constructor <init>(Lcom/twidroid/fragments/e/ab;Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/fragments/e/ab$10;->b:Lcom/twidroid/fragments/e/ab;
iput-object p2, p0, Lcom/twidroid/fragments/e/ab$10;->a:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 8
const/4 v0, 0x0
:try_start_1
iget-object v1, p0, Lcom/twidroid/fragments/e/ab$10;->b:Lcom/twidroid/fragments/e/ab;
invoke-static {v1}, Lcom/twidroid/fragments/e/ab;->d(Lcom/twidroid/fragments/e/ab;)Landroid/database/sqlite/SQLiteDatabase;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/fragments/e/ab$10;->b:Lcom/twidroid/fragments/e/ab;
invoke-static {v2}, Lcom/twidroid/fragments/e/ab;->e(Lcom/twidroid/fragments/e/ab;)Lcom/twidroid/b/a/b;
move-result-object v2
invoke-virtual {v2}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v2
iget-object v3, p0, Lcom/twidroid/fragments/e/ab$10;->a:Ljava/lang/String;
const/4 v4, 0x0
iget-object v5, p0, Lcom/twidroid/fragments/e/ab$10;->b:Lcom/twidroid/fragments/e/ab;
iget-object v5, v5, Lcom/twidroid/fragments/e/ab;->g:Landroid/widget/RadioGroup;
invoke-virtual {v5}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I
move-result v5
const v6, 0x7f0900e4
if-ne v5, v6, :cond_22
const/4 v0, 0x1
:cond_22
invoke-static {v1, v2, v3, v4, v0}, Lcom/twidroid/model/twitter/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/twidroid/net/a/c/c;Ljava/lang/String;IZ)Z
iget-object v0, p0, Lcom/twidroid/fragments/e/ab$10;->b:Lcom/twidroid/fragments/e/ab;
new-instance v1, Lcom/twidroid/fragments/e/ab$10$1;
invoke-direct {v1, p0}, Lcom/twidroid/fragments/e/ab$10$1;-><init>(Lcom/twidroid/fragments/e/ab$10;)V
invoke-static {v0, v1}, Lcom/twidroid/fragments/e/ab;->a(Lcom/twidroid/fragments/e/ab;Ljava/lang/Runnable;)V
:try_end_2f
.catch Lcom/ubermedia/net/a/a/a; {:try_start_1 .. :try_end_2f} :catch_30
:goto_2f
return-void
:catch_30
move-exception v0
iget-object v1, p0, Lcom/twidroid/fragments/e/ab$10;->b:Lcom/twidroid/fragments/e/ab;
iget-object v2, p0, Lcom/twidroid/fragments/e/ab$10;->b:Lcom/twidroid/fragments/e/ab;
invoke-virtual {v2}, Lcom/twidroid/fragments/e/ab;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-static {v1, v0, v2}, Lcom/twidroid/net/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Exception;Landroid/content/Context;)V
invoke-virtual {v0}, Lcom/ubermedia/net/a/a/a;->printStackTrace()V
goto :goto_2f
.end method
.class final Lcom/bbm/ui/dc;
.super Lcom/bbm/j/u;
.source "InlineImageEditText.java"
.field final synthetic a:Lcom/bbm/ui/InlineImageEditText;
.method constructor <init>(Lcom/bbm/ui/InlineImageEditText;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/dc;->a:Lcom/bbm/ui/InlineImageEditText;
invoke-direct {p0}, Lcom/bbm/j/u;-><init>()V
return-void
.end method
.method protected final b()Z
.registers 3
iget-object v0, p0, Lcom/bbm/ui/dc;->a:Lcom/bbm/ui/InlineImageEditText;
invoke-virtual {v0}, Lcom/bbm/ui/InlineImageEditText;->isInEditMode()Z
move-result v0
if-nez v0, :cond_17
iget-object v0, p0, Lcom/bbm/ui/dc;->a:Lcom/bbm/ui/InlineImageEditText;
invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;
move-result-object v1
iget-object v1, v1, Lcom/bbm/d;->b:Lcom/bbm/d/a;
invoke-virtual {v1}, Lcom/bbm/d/a;->i()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/bbm/ui/InlineImageEditText;->a(Lcom/bbm/ui/InlineImageEditText;Ljava/lang/String;)Ljava/lang/String;
:cond_17
iget-object v0, p0, Lcom/bbm/ui/dc;->a:Lcom/bbm/ui/InlineImageEditText;
invoke-static {v0}, Lcom/bbm/ui/InlineImageEditText;->a(Lcom/bbm/ui/InlineImageEditText;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_2b
iget-object v0, p0, Lcom/bbm/ui/dc;->a:Lcom/bbm/ui/InlineImageEditText;
invoke-virtual {v0}, Lcom/bbm/ui/InlineImageEditText;->isInEditMode()Z
move-result v0
if-eqz v0, :cond_2d
:cond_2b
const/4 v0, 0x1
:goto_2c
return v0
:cond_2d
const/4 v0, 0x0
goto :goto_2c
.end method
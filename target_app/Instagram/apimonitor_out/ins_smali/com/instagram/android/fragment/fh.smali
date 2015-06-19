.class final Lcom/instagram/android/fragment/fh;
.super Lcom/instagram/android/fragment/j;
.source "UserDetailFragment.java"
.field final synthetic b:Lcom/instagram/android/fragment/fb;
.method private constructor <init>(Lcom/instagram/android/fragment/fb;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/fragment/fh;->b:Lcom/instagram/android/fragment/fb;
invoke-direct {p0, p1}, Lcom/instagram/android/fragment/j;-><init>(Lcom/instagram/android/fragment/a;)V
return-void
.end method
.method synthetic constructor <init>(Lcom/instagram/android/fragment/fb;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/android/fragment/fh;-><init>(Lcom/instagram/android/fragment/fb;)V
return-void
.end method
.method protected final b(Lcom/instagram/api/j/j;)V
.registers 4
invoke-virtual {p1}, Lcom/instagram/api/j/j;->i()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_f
const-string v1, "Not authorized to view user"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_f
:goto_e
return-void
:cond_f
invoke-super {p0, p1}, Lcom/instagram/android/fragment/j;->b(Lcom/instagram/api/j/j;)V
goto :goto_e
.end method
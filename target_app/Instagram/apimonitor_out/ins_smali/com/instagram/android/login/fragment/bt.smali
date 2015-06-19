.class abstract Lcom/instagram/android/login/fragment/bt;
.super Ljava/lang/Object;
.source "RegisterFragment.java"
.implements Landroid/view/View$OnFocusChangeListener;
.field final synthetic b:Lcom/instagram/android/login/fragment/an;
.method private constructor <init>(Lcom/instagram/android/login/fragment/an;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/login/fragment/bt;->b:Lcom/instagram/android/login/fragment/an;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/instagram/android/login/fragment/an;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/android/login/fragment/bt;-><init>(Lcom/instagram/android/login/fragment/an;)V
return-void
.end method
.method public abstract a(Z)V
.end method
.method public final onFocusChange(Landroid/view/View;Z)V
.registers 4
iget-object v0, p0, Lcom/instagram/android/login/fragment/bt;->b:Lcom/instagram/android/login/fragment/an;
invoke-static {v0}, Lcom/instagram/android/login/fragment/an;->F(Lcom/instagram/android/login/fragment/an;)Z
move-result v0
if-nez v0, :cond_b
invoke-virtual {p0, p2}, Lcom/instagram/android/login/fragment/bt;->a(Z)V
:cond_b
return-void
.end method
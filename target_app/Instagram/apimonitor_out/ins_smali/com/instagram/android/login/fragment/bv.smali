.class abstract Lcom/instagram/android/login/fragment/bv;
.super Ljava/lang/Object;
.source "RegisterFragment.java"
.implements Landroid/text/TextWatcher;
.field final synthetic b:Lcom/instagram/android/login/fragment/an;
.method private constructor <init>(Lcom/instagram/android/login/fragment/an;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/login/fragment/bv;->b:Lcom/instagram/android/login/fragment/an;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/instagram/android/login/fragment/an;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/android/login/fragment/bv;-><init>(Lcom/instagram/android/login/fragment/an;)V
return-void
.end method
.method public abstract a()V
.end method
.method public final afterTextChanged(Landroid/text/Editable;)V
.registers 3
iget-object v0, p0, Lcom/instagram/android/login/fragment/bv;->b:Lcom/instagram/android/login/fragment/an;
invoke-static {v0}, Lcom/instagram/android/login/fragment/an;->F(Lcom/instagram/android/login/fragment/an;)Z
move-result v0
if-nez v0, :cond_b
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/bv;->a()V
:cond_b
return-void
.end method
.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
.registers 5
return-void
.end method
.method public final onTextChanged(Ljava/lang/CharSequence;III)V
.registers 5
return-void
.end method
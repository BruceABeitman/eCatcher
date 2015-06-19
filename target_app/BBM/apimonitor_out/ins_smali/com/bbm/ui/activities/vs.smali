.class final Lcom/bbm/ui/activities/vs;
.super Ljava/lang/Object;
.source "MainActivity.java"
.implements Landroid/text/TextWatcher;
.field final synthetic a:Landroid/widget/ImageView;
.field final synthetic b:Landroid/widget/EditText;
.field final synthetic c:Lcom/bbm/ui/activities/MainActivity;
.method constructor <init>(Lcom/bbm/ui/activities/MainActivity;Landroid/widget/ImageView;Landroid/widget/EditText;)V
.registers 4
iput-object p1, p0, Lcom/bbm/ui/activities/vs;->c:Lcom/bbm/ui/activities/MainActivity;
iput-object p2, p0, Lcom/bbm/ui/activities/vs;->a:Landroid/widget/ImageView;
iput-object p3, p0, Lcom/bbm/ui/activities/vs;->b:Landroid/widget/EditText;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final afterTextChanged(Landroid/text/Editable;)V
.registers 6
const/4 v1, 0x3
iget-object v0, p0, Lcom/bbm/ui/activities/vs;->a:Landroid/widget/ImageView;
invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/widget/FrameLayout$LayoutParams;
iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I
and-int/lit8 v2, v2, 0x3
if-ne v2, v1, :cond_2f
const/4 v2, 0x1
move v3, v2
:goto_11
if-eqz p1, :cond_32
invoke-interface {p1}, Landroid/text/Editable;->length()I
move-result v2
if-lez v2, :cond_32
invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/bbm/util/fb;->b(Ljava/lang/String;)Z
move-result v2
:goto_21
if-eq v2, v3, :cond_2e
if-eqz v2, :cond_37
:goto_25
or-int/lit8 v1, v1, 0x10
iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I
iget-object v0, p0, Lcom/bbm/ui/activities/vs;->b:Landroid/widget/EditText;
invoke-virtual {v0}, Landroid/widget/EditText;->requestLayout()V
:cond_2e
return-void
:cond_2f
const/4 v2, 0x0
move v3, v2
goto :goto_11
:cond_32
invoke-static {}, Lcom/bbm/util/fb;->h()Z
move-result v2
goto :goto_21
:cond_37
const/4 v1, 0x5
goto :goto_25
.end method
.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
.registers 5
return-void
.end method
.method public final onTextChanged(Ljava/lang/CharSequence;III)V
.registers 5
return-void
.end method
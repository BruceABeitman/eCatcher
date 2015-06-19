.class public final Lcom/instagram/android/maps/c/a;
.super Ljava/lang/Object;
.source "PhotoMapEditDoneListener.java"
.implements Landroid/view/View$OnClickListener;
.field private final a:Landroid/content/DialogInterface$OnClickListener;
.field private final b:Landroid/support/v4/app/k;
.field private final c:I
.method public constructor <init>(Landroid/support/v4/app/k;I)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/instagram/android/maps/c/b;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/instagram/android/maps/c/b;-><init>(Lcom/instagram/android/maps/c/a;B)V
iput-object v0, p0, Lcom/instagram/android/maps/c/a;->a:Landroid/content/DialogInterface$OnClickListener;
iput-object p1, p0, Lcom/instagram/android/maps/c/a;->b:Landroid/support/v4/app/k;
iput p2, p0, Lcom/instagram/android/maps/c/a;->c:I
return-void
.end method
.method private a()Landroid/content/res/Resources;
.registers 2
iget-object v0, p0, Lcom/instagram/android/maps/c/a;->b:Landroid/support/v4/app/k;
invoke-virtual {v0}, Landroid/support/v4/app/k;->getResources()Landroid/content/res/Resources;
move-result-object v0
return-object v0
.end method
.method static synthetic a(Lcom/instagram/android/maps/c/a;)Landroid/support/v4/app/k;
.registers 2
iget-object v0, p0, Lcom/instagram/android/maps/c/a;->b:Landroid/support/v4/app/k;
return-object v0
.end method
.method static synthetic b(Lcom/instagram/android/maps/c/a;)I
.registers 2
iget v0, p0, Lcom/instagram/android/maps/c/a;->c:I
return v0
.end method
.method private b()Ljava/lang/String;
.registers 10
const/4 v8, 0x0
const/4 v7, 0x1
invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/maps/e/a;->g()I
move-result v2
invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/maps/e/a;->h()I
move-result v3
iget v0, p0, Lcom/instagram/android/maps/c/a;->c:I
sget v1, Lcom/instagram/android/maps/e/f;->b:I
if-ne v0, v1, :cond_79
if-ne v3, v7, :cond_3f
invoke-direct {p0}, Lcom/instagram/android/maps/c/a;->a()Landroid/content/res/Resources;
move-result-object v0
sget v1, Lcom/facebook/az;->popup_review_confirm_add_photo_single:I
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
:goto_24
if-ne v2, v7, :cond_58
invoke-direct {p0}, Lcom/instagram/android/maps/c/a;->a()Landroid/content/res/Resources;
move-result-object v1
sget v4, Lcom/facebook/az;->popup_review_confirm_remove_photo_single:I
invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
:goto_30
if-lez v2, :cond_3e
if-nez v3, :cond_6b
invoke-direct {p0}, Lcom/instagram/android/maps/c/a;->a()Landroid/content/res/Resources;
move-result-object v0
sget v1, Lcom/facebook/az;->popup_review_confirm_remove_photo_all:I
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
:goto_3e
:cond_3e
return-object v0
:cond_3f
invoke-direct {p0}, Lcom/instagram/android/maps/c/a;->a()Landroid/content/res/Resources;
move-result-object v0
sget v1, Lcom/facebook/az;->popup_review_confirm_add_photo_plural:I
new-array v4, v7, [Ljava/lang/Object;
invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v5
aput-object v5, v4, v8
invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
new-array v1, v8, [Ljava/lang/Object;
invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto :goto_24
:cond_58
invoke-direct {p0}, Lcom/instagram/android/maps/c/a;->a()Landroid/content/res/Resources;
move-result-object v1
sget v4, Lcom/facebook/az;->popup_review_confirm_remove_photo_plural:I
new-array v5, v7, [Ljava/lang/Object;
invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v6
aput-object v6, v5, v8
invoke-virtual {v1, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
goto :goto_30
:cond_6b
const-string v2, "%s %s"
const/4 v3, 0x2
new-array v3, v3, [Ljava/lang/Object;
aput-object v0, v3, v8
aput-object v1, v3, v7
invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto :goto_3e
:cond_79
if-ne v2, v7, :cond_86
invoke-direct {p0}, Lcom/instagram/android/maps/c/a;->a()Landroid/content/res/Resources;
move-result-object v0
sget v1, Lcom/facebook/az;->popup_edit_confirm_remove_photo_single:I
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_3e
:cond_86
invoke-direct {p0}, Lcom/instagram/android/maps/c/a;->a()Landroid/content/res/Resources;
move-result-object v0
sget v1, Lcom/facebook/az;->popup_edit_confirm_remove_photo_plural:I
new-array v3, v7, [Ljava/lang/Object;
invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v2
aput-object v2, v3, v8
invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto :goto_3e
.end method
.method private c()Ljava/lang/String;
.registers 6
const/4 v3, 0x1
iget v0, p0, Lcom/instagram/android/maps/c/a;->c:I
sget v1, Lcom/instagram/android/maps/e/f;->b:I
if-ne v0, v1, :cond_12
invoke-direct {p0}, Lcom/instagram/android/maps/c/a;->a()Landroid/content/res/Resources;
move-result-object v0
sget v1, Lcom/facebook/az;->popup_review_confirm_title:I
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
:goto_11
return-object v0
:cond_12
invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/maps/e/a;->g()I
move-result v0
if-ne v0, v3, :cond_27
invoke-direct {p0}, Lcom/instagram/android/maps/c/a;->a()Landroid/content/res/Resources;
move-result-object v0
sget v1, Lcom/facebook/az;->popup_edit_confirm_title_remove_photo_single:I
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_11
:cond_27
invoke-direct {p0}, Lcom/instagram/android/maps/c/a;->a()Landroid/content/res/Resources;
move-result-object v1
sget v2, Lcom/facebook/az;->popup_edit_confirm_title_remove_photo_plural:I
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v0
aput-object v0, v3, v4
invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto :goto_11
.end method
.method public final onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/maps/c/a; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
new-instance v0, Lcom/instagram/ui/dialog/b;
iget-object v1, p0, Lcom/instagram/android/maps/c/a;->b:Landroid/support/v4/app/k;
invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V
invoke-direct {p0}, Lcom/instagram/android/maps/c/a;->c()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->b(Ljava/lang/String;)Lcom/instagram/ui/dialog/b;
move-result-object v0
invoke-direct {p0}, Lcom/instagram/android/maps/c/a;->b()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(Ljava/lang/CharSequence;)Lcom/instagram/ui/dialog/b;
move-result-object v0
sget v1, Lcom/facebook/az;->confirm:I
iget-object v2, p0, Lcom/instagram/android/maps/c/a;->a:Landroid/content/DialogInterface$OnClickListener;
invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;
move-result-object v0
sget v1, Lcom/facebook/az;->cancel:I
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/Dialog;->show()V
const-string v1, " - Lcom/instagram/android/maps/c/a; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
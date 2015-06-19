.class public Lcom/twidroid/ui/themes/o;
.super Ljava/lang/Object;
.source "SourceFile"
.field public static final a:I = 0x761
.field public static final b:I = 0x763
.field public static final c:I = 0x762
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/twidroid/UberSocialApplication;)V
.registers 10
const/4 v1, 0x1
new-instance v4, Landroid/app/ProgressDialog;
invoke-direct {v4, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V
const v0, 0x7f0c02e1
invoke-virtual {v4, v0}, Landroid/app/ProgressDialog;->setTitle(I)V
invoke-virtual {v4, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V
invoke-virtual {v4, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V
const v0, 0x7f0c0029
invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
move-result-object v0
new-instance v1, Lcom/twidroid/ui/themes/o$1;
invoke-direct {v1, v4}, Lcom/twidroid/ui/themes/o$1;-><init>(Landroid/app/ProgressDialog;)V
invoke-virtual {v4, v0, v1}, Landroid/app/ProgressDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
invoke-virtual {v4}, Landroid/app/ProgressDialog;->show()V
new-instance v3, Landroid/os/Handler;
invoke-direct {v3}, Landroid/os/Handler;-><init>()V
new-instance v0, Lcom/twidroid/ui/themes/o$2;
move-object v1, p0
move-object v2, p1
move-object v5, p2
move-object v6, p1
invoke-direct/range {v0 .. v6}, Lcom/twidroid/ui/themes/o$2;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Landroid/app/ProgressDialog;Lcom/twidroid/UberSocialApplication;Ljava/lang/String;)V
invoke-virtual {v0}, Lcom/twidroid/ui/themes/q;->a()V
return-void
.end method
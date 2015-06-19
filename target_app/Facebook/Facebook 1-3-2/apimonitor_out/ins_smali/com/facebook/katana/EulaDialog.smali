.class public Lcom/facebook/katana/EulaDialog;
.super Ljava/lang/Object;
.source "EulaDialog.java"
.field private final mDialog:Landroid/app/Dialog;
.method public constructor <init>(Landroid/app/Activity;)V
.registers 15
const/4 v3, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v7, Landroid/app/AlertDialog$Builder;
invoke-direct {v7, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
const v1, 0x7f080042
invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v7, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
const-string v1, "layout_inflater"
invoke-virtual {p1, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v12
check-cast v12, Landroid/view/LayoutInflater;
const v1, 0x7f030018
invoke-virtual {v12, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v10
invoke-virtual {v7, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;
const v1, 0x7f0b0030
invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/webkit/WebView;
:try_start_2e
invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v3, 0x7f060001
invoke-virtual {v1, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
move-result-object v9
invoke-virtual {v9}, Ljava/io/InputStream;->available()I
move-result v11
new-array v6, v11, [B
invoke-virtual {v9, v6}, Ljava/io/InputStream;->read([B)I
invoke-virtual {v9}, Ljava/io/InputStream;->close()V
new-instance v2, Ljava/lang/String;
const-string v1, "UTF-8"
invoke-direct {v2, v6, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
const/4 v1, 0x0
const-string v3, "text/html"
const-string v4, "utf-8"
const/4 v5, 0x0
invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
:try_end_55
.catch Ljava/io/IOException; {:try_start_2e .. :try_end_55} :catch_86
const/4 v1, 0x1
invoke-virtual {v7, v1}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;
const v1, 0x7f080040
invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
move-result-object v1
new-instance v3, Lcom/facebook/katana/EulaDialog$1;
invoke-direct {v3, p0}, Lcom/facebook/katana/EulaDialog$1;-><init>(Lcom/facebook/katana/EulaDialog;)V
invoke-virtual {v7, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
const v1, 0x7f080041
invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
move-result-object v1
new-instance v3, Lcom/facebook/katana/EulaDialog$2;
invoke-direct {v3, p0, p1}, Lcom/facebook/katana/EulaDialog$2;-><init>(Lcom/facebook/katana/EulaDialog;Landroid/app/Activity;)V
invoke-virtual {v7, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
new-instance v1, Lcom/facebook/katana/EulaDialog$3;
invoke-direct {v1, p0, p1}, Lcom/facebook/katana/EulaDialog$3;-><init>(Lcom/facebook/katana/EulaDialog;Landroid/app/Activity;)V
invoke-virtual {v7, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;
invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
move-result-object v1
iput-object v1, p0, Lcom/facebook/katana/EulaDialog;->mDialog:Landroid/app/Dialog;
return-void
:catch_86
move-exception v1
move-object v8, v1
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method static synthetic access$0(Lcom/facebook/katana/EulaDialog;)Landroid/app/Dialog;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/EulaDialog;->mDialog:Landroid/app/Dialog;
return-object v0
.end method
.method public getDialog()Landroid/app/Dialog;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/EulaDialog;->mDialog:Landroid/app/Dialog;
return-object v0
.end method
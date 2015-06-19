.class public final Lcom/bbm/ui/b/w;
.super Ljava/lang/Object;
.source "ListDialogBuilder.java"
.field public final a:Landroid/content/Context;
.field public final b:Landroid/app/AlertDialog$Builder;
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/bbm/ui/b/w;->a:Landroid/content/Context;
new-instance v0, Landroid/app/AlertDialog$Builder;
const/4 v1, 0x2
invoke-direct {v0, p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V
iput-object v0, p0, Lcom/bbm/ui/b/w;->b:Landroid/app/AlertDialog$Builder;
return-void
.end method
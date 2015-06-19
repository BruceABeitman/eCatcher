.class final Lcom/instagram/n/b/d;
.super Ljava/lang/Object;
.source "AutoUpdateHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/n/b/a;


# direct methods
.method constructor <init>(Lcom/instagram/n/b/a;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/n/b/d;->a:Lcom/instagram/n/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

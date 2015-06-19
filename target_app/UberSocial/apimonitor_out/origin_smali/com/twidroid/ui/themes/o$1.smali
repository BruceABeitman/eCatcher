.class final Lcom/twidroid/ui/themes/o$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/ui/themes/o;->a(Landroid/content/Context;Ljava/lang/String;Lcom/twidroid/UberSocialApplication;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Landroid/app/ProgressDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/ui/themes/o$1;->a:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/ui/themes/o$1;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    return-void
.end method

.class final Lcom/instagram/android/people/c/g;
.super Ljava/lang/Object;
.source "ModifyPhotosOfYouHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/people/c/f;


# direct methods
.method constructor <init>(Lcom/instagram/android/people/c/f;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/people/c/g;->a:Lcom/instagram/android/people/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/instagram/android/people/c/g;->a:Lcom/instagram/android/people/c/f;

    iget-object v0, v0, Lcom/instagram/android/people/c/f;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.class final Lcom/instagram/android/nux/b;
.super Ljava/lang/Object;
.source "FacebookHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/nux/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/nux/a;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/nux/b;->a:Lcom/instagram/android/nux/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

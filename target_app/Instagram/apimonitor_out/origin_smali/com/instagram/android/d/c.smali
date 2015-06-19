.class final Lcom/instagram/android/d/c;
.super Ljava/lang/Object;
.source "AddAvatarHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/d/b;


# direct methods
.method constructor <init>(Lcom/instagram/android/d/b;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/d/c;->a:Lcom/instagram/android/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

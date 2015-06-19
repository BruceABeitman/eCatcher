.class final Lcom/instagram/android/maps/c/b;
.super Ljava/lang/Object;
.source "PhotoMapEditDoneListener.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/maps/c/a;


# direct methods
.method private constructor <init>(Lcom/instagram/android/maps/c/a;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/maps/c/b;->a:Lcom/instagram/android/maps/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/maps/c/a;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/instagram/android/maps/c/b;-><init>(Lcom/instagram/android/maps/c/a;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    new-instance v0, Lcom/instagram/android/maps/c/c;

    iget-object v1, p0, Lcom/instagram/android/maps/c/b;->a:Lcom/instagram/android/maps/c/a;

    invoke-static {v1}, Lcom/instagram/android/maps/c/a;->a(Lcom/instagram/android/maps/c/a;)Landroid/support/v4/app/k;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/maps/c/b;->a:Lcom/instagram/android/maps/c/a;

    invoke-static {v2}, Lcom/instagram/android/maps/c/a;->b(Lcom/instagram/android/maps/c/a;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/instagram/android/maps/c/c;-><init>(Landroid/support/v4/app/k;I)V

    invoke-virtual {v0}, Lcom/instagram/android/maps/c/c;->a()V

    return-void
.end method

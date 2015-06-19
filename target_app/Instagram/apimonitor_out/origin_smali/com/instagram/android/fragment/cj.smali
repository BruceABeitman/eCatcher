.class final Lcom/instagram/android/fragment/cj;
.super Ljava/lang/Object;
.source "HashtagFeedFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/support/v4/app/s;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/support/v4/app/s;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/instagram/android/fragment/cj;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/instagram/android/fragment/cj;->b:Landroid/support/v4/app/s;

    iput-object p3, p0, Lcom/instagram/android/fragment/cj;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    iget-object v0, p0, Lcom/instagram/android/fragment/cj;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/instagram/android/fragment/cj;->b:Landroid/support/v4/app/s;

    iget-object v2, p0, Lcom/instagram/android/fragment/cj;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/instagram/android/fragment/cg;->a(Ljava/lang/String;Landroid/support/v4/app/s;Ljava/lang/String;)V

    return-void
.end method

.class final Lcom/instagram/android/fragment/cm;
.super Lcom/instagram/feed/a/a;
.source "LikedFeedFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/ck;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/ck;Landroid/support/v4/app/Fragment;Lcom/instagram/feed/g/a;Lcom/instagram/feed/f/a;ILcom/instagram/api/j/f;)V
    .registers 13

    iput-object p1, p0, Lcom/instagram/android/fragment/cm;->a:Lcom/instagram/android/fragment/ck;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/instagram/feed/a/a;-><init>(Landroid/support/v4/app/Fragment;Lcom/instagram/feed/g/a;Lcom/instagram/feed/f/a;ILcom/instagram/api/j/f;)V

    return-void
.end method


# virtual methods
.method protected final e()Ljava/lang/String;
    .registers 2

    const-string v0, "feed/liked/"

    return-object v0
.end method

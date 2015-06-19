.class final Lcom/instagram/android/fragment/aq;
.super Lcom/instagram/feed/a/a;
.source "ExploreFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/ap;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/ap;Landroid/support/v4/app/Fragment;Lcom/instagram/feed/g/a;Lcom/instagram/feed/f/a;ILcom/instagram/api/j/f;)V
    .registers 13

    iput-object p1, p0, Lcom/instagram/android/fragment/aq;->a:Lcom/instagram/android/fragment/ap;

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

    const-string v0, "feed/popular/"

    return-object v0
.end method

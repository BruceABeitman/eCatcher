.class public Lcom/facebook/katana/FeedbackAdapter$PostItem;
.super Lcom/facebook/katana/FeedbackAdapter$Item;
.source "FeedbackAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/FeedbackAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "PostItem"
.end annotation


# instance fields
.field protected final mPost:Lcom/facebook/katana/service/api/FacebookPost;


# direct methods
.method protected constructor <init>(Lcom/facebook/katana/service/api/FacebookPost;I)V
    .registers 3

    invoke-direct {p0, p2}, Lcom/facebook/katana/FeedbackAdapter$Item;-><init>(I)V

    iput-object p1, p0, Lcom/facebook/katana/FeedbackAdapter$PostItem;->mPost:Lcom/facebook/katana/service/api/FacebookPost;

    return-void
.end method


# virtual methods
.method public getPost()Lcom/facebook/katana/service/api/FacebookPost;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/FeedbackAdapter$PostItem;->mPost:Lcom/facebook/katana/service/api/FacebookPost;

    return-object v0
.end method

.class public final Lcom/instagram/android/feed/a/b/ac;
.super Ljava/lang/Object;
.source "MediaViewBinder.java"


# instance fields
.field a:Landroid/view/ViewGroup;

.field b:Lcom/instagram/feed/widget/a;

.field c:Lcom/instagram/android/people/widget/PeopleTagsLayout;

.field d:Landroid/widget/Button;

.field e:Lcom/instagram/android/widget/MediaActionsView;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/instagram/feed/widget/a;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/feed/a/b/ac;->b:Lcom/instagram/feed/widget/a;

    return-object v0
.end method

.method public final b()Lcom/instagram/android/people/widget/PeopleTagsLayout;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/feed/a/b/ac;->c:Lcom/instagram/android/people/widget/PeopleTagsLayout;

    return-object v0
.end method

.method public final c()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/feed/a/b/ac;->d:Landroid/widget/Button;

    return-object v0
.end method

.method public final d()Lcom/instagram/android/widget/MediaActionsView;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/feed/a/b/ac;->e:Lcom/instagram/android/widget/MediaActionsView;

    return-object v0
.end method

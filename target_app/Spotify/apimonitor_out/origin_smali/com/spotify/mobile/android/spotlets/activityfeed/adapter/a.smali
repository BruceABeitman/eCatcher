.class public final Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/a;
.super Lcom/spotify/mobile/android/ui/adapter/ae;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/spotify/mobile/android/ui/adapter/ae",
        "<",
        "Lcom/spotify/mobile/android/spotlets/activityfeed/model/UserModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/spotify/mobile/android/ui/adapter/ae;-><init>(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Lcom/spotify/android/paste/widget/ListItemView;Ljava/lang/Object;)V
    .registers 5

    check-cast p2, Lcom/spotify/mobile/android/spotlets/activityfeed/model/UserModel;

    invoke-virtual {p2}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/UserModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/spotify/android/paste/widget/ListItemView;->a(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, p2}, Lcom/spotify/android/paste/widget/ListItemView;->setTag(Ljava/lang/Object;)V

    const-class v0, Lcom/spotify/mobile/android/util/df;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/df;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/df;->a()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-virtual {p2}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/UserModel;->getImage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->a(Ljava/lang/String;)Lcom/squareup/picasso/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/stuff/k;->g(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/ad;->a(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/stuff/k;->g(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/ad;->b(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/ad;

    move-result-object v0

    invoke-virtual {p1}, Lcom/spotify/android/paste/widget/ListItemView;->a()Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v1}, Lcom/spotify/mobile/android/util/df;->a(Landroid/widget/ImageView;)Lcom/squareup/picasso/ai;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/ad;->a(Lcom/squareup/picasso/ai;)V

    return-void
.end method

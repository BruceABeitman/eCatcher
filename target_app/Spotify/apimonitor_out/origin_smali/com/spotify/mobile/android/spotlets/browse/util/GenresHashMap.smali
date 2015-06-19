.class public Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/spotify/mobile/android/spotlets/browse/model/Genre;",
        ">;"
    }
.end annotation


# static fields
.field static final serialVersionUID:J = 0x1L


# instance fields
.field private final transient a:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)V
    .registers 12

    const/4 v1, 0x0

    new-instance v0, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a:Landroid/content/res/Resources;

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v2, p1

    move-object v3, v1

    move-object v5, v1

    move-object v6, v1

    move-object v7, v1

    move-object v8, v1

    invoke-direct/range {v0 .. v8}, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 13

    const/4 v1, 0x0

    new-instance v0, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a:Landroid/content/res/Resources;

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v2, p2

    move-object v3, p1

    move-object v5, v1

    move-object v6, v1

    move-object v7, v1

    move-object v8, v1

    invoke-direct/range {v0 .. v8}, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2, v0}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

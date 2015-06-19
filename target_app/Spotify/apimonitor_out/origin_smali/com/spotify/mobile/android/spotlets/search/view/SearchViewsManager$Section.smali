.class public final enum Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

.field public static final enum b:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

.field public static final enum c:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

.field public static final enum d:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

.field public static final enum e:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

.field public static final enum f:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

.field public static final enum g:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

.field public static final enum h:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

.field public static final enum i:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

.field public static final enum j:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

.field public static final enum k:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

.field public static final enum l:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

.field public static final enum m:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

.field public static final enum n:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

.field public static final enum o:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

.field public static final enum p:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

.field static final q:[Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

.field private static final synthetic r:[Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;


# instance fields
.field public final mCategory:Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;

.field public final searchType:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;

.field public final subView:Lcom/spotify/mobile/android/util/ViewUri$SubView;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    const-string v1, "TOP_HIT"

    const/4 v3, 0x0

    sget-object v4, Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;->b:Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;

    sget-object v5, Lcom/spotify/mobile/android/util/ViewUri$SubView;->r:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    invoke-direct/range {v0 .. v5}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;-><init>(Ljava/lang/String;ILcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;Lcom/spotify/mobile/android/util/ViewUri$SubView;)V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->a:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    new-instance v3, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    const-string v4, "ARTISTS"

    sget-object v6, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;->b:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;

    sget-object v7, Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;->c:Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;

    sget-object v8, Lcom/spotify/mobile/android/util/ViewUri$SubView;->A:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;-><init>(Ljava/lang/String;ILcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;Lcom/spotify/mobile/android/util/ViewUri$SubView;)V

    sput-object v3, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->b:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    new-instance v3, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    const-string v4, "ALBUMS"

    sget-object v6, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;->c:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;

    sget-object v7, Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;->d:Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;

    sget-object v8, Lcom/spotify/mobile/android/util/ViewUri$SubView;->y:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;-><init>(Ljava/lang/String;ILcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;Lcom/spotify/mobile/android/util/ViewUri$SubView;)V

    sput-object v3, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->c:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    new-instance v3, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    const-string v4, "TRACKS"

    sget-object v6, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;->g:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;

    sget-object v7, Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;->e:Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;

    sget-object v8, Lcom/spotify/mobile/android/util/ViewUri$SubView;->s:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    move v5, v11

    invoke-direct/range {v3 .. v8}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;-><init>(Ljava/lang/String;ILcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;Lcom/spotify/mobile/android/util/ViewUri$SubView;)V

    sput-object v3, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->d:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    new-instance v3, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    const-string v4, "TRACKS_RELEVANT"

    sget-object v6, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;->g:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;

    sget-object v7, Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;->e:Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;

    sget-object v8, Lcom/spotify/mobile/android/util/ViewUri$SubView;->v:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    move v5, v12

    invoke-direct/range {v3 .. v8}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;-><init>(Ljava/lang/String;ILcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;Lcom/spotify/mobile/android/util/ViewUri$SubView;)V

    sput-object v3, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->e:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    new-instance v3, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    const-string v4, "TRACKS_OTHER"

    const/4 v5, 0x5

    sget-object v6, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;->g:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;

    sget-object v7, Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;->e:Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;

    sget-object v8, Lcom/spotify/mobile/android/util/ViewUri$SubView;->w:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    invoke-direct/range {v3 .. v8}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;-><init>(Ljava/lang/String;ILcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;Lcom/spotify/mobile/android/util/ViewUri$SubView;)V

    sput-object v3, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->f:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    new-instance v3, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    const-string v4, "PLAYLISTS"

    const/4 v5, 0x6

    sget-object v6, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;->d:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;

    sget-object v7, Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;->h:Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;

    sget-object v8, Lcom/spotify/mobile/android/util/ViewUri$SubView;->x:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    invoke-direct/range {v3 .. v8}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;-><init>(Ljava/lang/String;ILcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;Lcom/spotify/mobile/android/util/ViewUri$SubView;)V

    sput-object v3, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->g:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    new-instance v3, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    const-string v4, "PROFILES"

    const/4 v5, 0x7

    sget-object v6, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;->e:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;

    sget-object v7, Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;->i:Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;

    sget-object v8, Lcom/spotify/mobile/android/util/ViewUri$SubView;->z:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    invoke-direct/range {v3 .. v8}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;-><init>(Ljava/lang/String;ILcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;Lcom/spotify/mobile/android/util/ViewUri$SubView;)V

    sput-object v3, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->h:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    new-instance v3, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    const-string v4, "GENRES"

    const/16 v5, 0x8

    sget-object v6, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;->f:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;

    sget-object v7, Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;->g:Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;

    sget-object v8, Lcom/spotify/mobile/android/util/ViewUri$SubView;->t:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    invoke-direct/range {v3 .. v8}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;-><init>(Ljava/lang/String;ILcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;Lcom/spotify/mobile/android/util/ViewUri$SubView;)V

    sput-object v3, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->i:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    new-instance v3, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    const-string v4, "SUGGESTIONS"

    const/16 v5, 0x9

    const/4 v6, 0x0

    sget-object v7, Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;->f:Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;

    sget-object v8, Lcom/spotify/mobile/android/util/ViewUri$SubView;->u:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    invoke-direct/range {v3 .. v8}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;-><init>(Ljava/lang/String;ILcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;Lcom/spotify/mobile/android/util/ViewUri$SubView;)V

    sput-object v3, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->j:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    const-string v1, "NO_RESULTS"

    const/16 v3, 0xa

    invoke-direct {v0, v1, v3}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->k:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    const-string v1, "RECENT_SEARCHES"

    const/16 v3, 0xb

    invoke-direct {v0, v1, v3}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->l:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    const-string v1, "START"

    const/16 v3, 0xc

    invoke-direct {v0, v1, v3}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->m:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    const-string v1, "OFFLINE"

    const/16 v3, 0xd

    invoke-direct {v0, v1, v3}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->n:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    const-string v1, "ERROR"

    const/16 v3, 0xe

    invoke-direct {v0, v1, v3}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->o:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    const-string v1, "FOOTER_THROBBER"

    const/16 v3, 0xf

    invoke-direct {v0, v1, v3}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->p:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    const/16 v0, 0x10

    new-array v0, v0, [Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    sget-object v1, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->a:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    aput-object v1, v0, v2

    sget-object v1, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->b:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    aput-object v1, v0, v9

    sget-object v1, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->c:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    aput-object v1, v0, v10

    sget-object v1, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->d:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    aput-object v1, v0, v11

    sget-object v1, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->e:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    aput-object v1, v0, v12

    const/4 v1, 0x5

    sget-object v3, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->f:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    aput-object v3, v0, v1

    const/4 v1, 0x6

    sget-object v3, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->g:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    aput-object v3, v0, v1

    const/4 v1, 0x7

    sget-object v3, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->h:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    aput-object v3, v0, v1

    const/16 v1, 0x8

    sget-object v3, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->i:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    aput-object v3, v0, v1

    const/16 v1, 0x9

    sget-object v3, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->j:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    aput-object v3, v0, v1

    const/16 v1, 0xa

    sget-object v3, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->k:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    aput-object v3, v0, v1

    const/16 v1, 0xb

    sget-object v3, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->l:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    aput-object v3, v0, v1

    const/16 v1, 0xc

    sget-object v3, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->m:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    aput-object v3, v0, v1

    const/16 v1, 0xd

    sget-object v3, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->n:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    aput-object v3, v0, v1

    const/16 v1, 0xe

    sget-object v3, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->o:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    aput-object v3, v0, v1

    const/16 v1, 0xf

    sget-object v3, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->p:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    aput-object v3, v0, v1

    sput-object v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->r:[Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    sget-object v1, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->j:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    aput-object v1, v0, v2

    sget-object v1, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->a:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    aput-object v1, v0, v9

    sget-object v1, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->i:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    aput-object v1, v0, v10

    sget-object v1, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->b:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    aput-object v1, v0, v11

    sget-object v1, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->c:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    aput-object v1, v0, v12

    const/4 v1, 0x5

    sget-object v2, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->d:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->g:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->h:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    aput-object v2, v0, v1

    sput-object v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->q:[Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v3, 0x0

    sget-object v5, Lcom/spotify/mobile/android/util/ViewUri$SubView;->a:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;-><init>(Ljava/lang/String;ILcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;Lcom/spotify/mobile/android/util/ViewUri$SubView;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;Lcom/spotify/mobile/android/util/ViewUri$SubView;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;",
            "Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;",
            "Lcom/spotify/mobile/android/util/ViewUri$SubView;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->searchType:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;

    iput-object p4, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->mCategory:Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;

    iput-object p5, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->subView:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    return-void
.end method

.method static a(Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;)Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;
    .registers 6

    sget-object v1, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->q:[Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_10

    aget-object v3, v1, v0

    iget-object v4, v3, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->mCategory:Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;

    if-ne p0, v4, :cond_d

    return-object v3

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_10
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Invalid result type"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;
    .registers 2

    const-class v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    return-object v0
.end method

.method public static values()[Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;
    .registers 1

    sget-object v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->r:[Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    invoke-virtual {v0}, [Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    return-object v0
.end method

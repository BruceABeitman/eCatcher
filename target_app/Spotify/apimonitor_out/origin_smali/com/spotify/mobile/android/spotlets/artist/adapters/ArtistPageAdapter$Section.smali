.class public final enum Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;

.field public static final enum b:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;

.field public static final enum c:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;

.field public static final enum d:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;

.field public static final enum e:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;

.field public static final enum f:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;

.field public static final enum g:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;

.field public static final enum h:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;

.field public static final enum i:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;

.field public static final enum j:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;

.field public static final enum k:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;

.field public static final enum l:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;

.field private static final synthetic m:[Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;


# instance fields
.field private final mPreferredAdapter:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$PreferredAdapter;

.field private final mTitleStringId:I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;

    const-string v1, "LATEST_RELEASE"

    const v2, 0x7f0f0274

    sget-object v3, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$PreferredAdapter;->b:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$PreferredAdapter;

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;-><init>(Ljava/lang/String;IILcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$PreferredAdapter;)V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;->a:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;

    const-string v1, "TOP_TRACKS"

    const v2, 0x7f0f0275

    sget-object v3, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$PreferredAdapter;->b:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$PreferredAdapter;

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;-><init>(Ljava/lang/String;IILcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$PreferredAdapter;)V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;->b:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;

    const-string v1, "RELATED_ARTISTS"

    const v2, 0x7f0f0062

    sget-object v3, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$PreferredAdapter;->b:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$PreferredAdapter;

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;-><init>(Ljava/lang/String;IILcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$PreferredAdapter;)V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;->c:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;

    const-string v1, "ON_TOUR"

    const v2, 0x7f0f027b

    sget-object v3, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$PreferredAdapter;->b:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$PreferredAdapter;

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;-><init>(Ljava/lang/String;IILcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$PreferredAdapter;)V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;->d:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;

    const-string v1, "MERCHANDISE"

    const v2, 0x7f0f0067

    sget-object v3, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$PreferredAdapter;->b:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$PreferredAdapter;

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;-><init>(Ljava/lang/String;IILcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$PreferredAdapter;)V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;->e:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;

    const-string v1, "ALBUMS"

    const/4 v2, 0x5

    const v3, 0x7f0f0064

    sget-object v4, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$PreferredAdapter;->a:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$PreferredAdapter;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;-><init>(Ljava/lang/String;IILcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$PreferredAdapter;)V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;->f:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;

    const-string v1, "SINGLES"

    const/4 v2, 0x6

    const v3, 0x7f0f006a

    sget-object v4, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$PreferredAdapter;->a:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$PreferredAdapter;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;-><init>(Ljava/lang/String;IILcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$PreferredAdapter;)V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;->g:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;

    const-string v1, "COMPILATIONS"

    const/4 v2, 0x7

    const v3, 0x7f0f0066

    sget-object v4, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$PreferredAdapter;->a:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$PreferredAdapter;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;-><init>(Ljava/lang/String;IILcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$PreferredAdapter;)V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;->h:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;

    const-string v1, "APPEARS_ON"

    const/16 v2, 0x8

    const v3, 0x7f0f0065

    sget-object v4, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$PreferredAdapter;->b:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$PreferredAdapter;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;-><init>(Ljava/lang/String;IILcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$PreferredAdapter;)V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;->i:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;

    const-string v1, "RADIO_STATIONS"

    const/16 v2, 0x9

    const v3, 0x7f0f0069

    sget-object v4, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$PreferredAdapter;->b:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$PreferredAdapter;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;-><init>(Ljava/lang/String;IILcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$PreferredAdapter;)V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;->j:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;

    const-string v1, "BIOGRAPHY"

    const/16 v2, 0xa

    const v3, 0x7f0f0061

    sget-object v4, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$PreferredAdapter;->b:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$PreferredAdapter;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;-><init>(Ljava/lang/String;IILcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$PreferredAdapter;)V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;->k:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;

    const-string v1, "PLAYLISTS"

    const/16 v2, 0xb

    const v3, 0x7f0f0068

    sget-object v4, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$PreferredAdapter;->b:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$PreferredAdapter;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;-><init>(Ljava/lang/String;IILcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$PreferredAdapter;)V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;->l:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;

    sget-object v1, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;->a:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;

    aput-object v1, v0, v5

    sget-object v1, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;->b:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;

    aput-object v1, v0, v6

    sget-object v1, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;->c:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;

    aput-object v1, v0, v7

    sget-object v1, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;->d:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;

    aput-object v1, v0, v8

    sget-object v1, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;->e:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;->f:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;->g:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;->h:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;->i:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;->j:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;->k:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;->l:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;

    aput-object v2, v0, v1

    sput-object v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;->m:[Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$PreferredAdapter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$PreferredAdapter;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;->mTitleStringId:I

    iput-object p4, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;->mPreferredAdapter:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$PreferredAdapter;

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;)Z
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;->mPreferredAdapter:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$PreferredAdapter;

    sget-object v1, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$PreferredAdapter;->a:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$PreferredAdapter;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method static synthetic b(Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;)I
    .registers 2

    iget v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;->mTitleStringId:I

    return v0
.end method

.method static synthetic c(Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;)Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$PreferredAdapter;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;->mPreferredAdapter:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$PreferredAdapter;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;
    .registers 2

    const-class v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;

    return-object v0
.end method

.method public static values()[Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;
    .registers 1

    sget-object v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;->m:[Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;

    invoke-virtual {v0}, [Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;

    return-object v0
.end method

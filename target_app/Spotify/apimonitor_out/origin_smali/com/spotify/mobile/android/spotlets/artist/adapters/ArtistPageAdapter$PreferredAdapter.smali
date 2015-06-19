.class public final enum Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$PreferredAdapter;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$PreferredAdapter;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$PreferredAdapter;

.field public static final enum b:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$PreferredAdapter;

.field private static final synthetic c:[Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$PreferredAdapter;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$PreferredAdapter;

    const-string v1, "CARDS"

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$PreferredAdapter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$PreferredAdapter;->a:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$PreferredAdapter;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$PreferredAdapter;

    const-string v1, "LISTITEMS"

    invoke-direct {v0, v1, v3}, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$PreferredAdapter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$PreferredAdapter;->b:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$PreferredAdapter;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$PreferredAdapter;

    sget-object v1, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$PreferredAdapter;->a:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$PreferredAdapter;

    aput-object v1, v0, v2

    sget-object v1, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$PreferredAdapter;->b:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$PreferredAdapter;

    aput-object v1, v0, v3

    sput-object v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$PreferredAdapter;->c:[Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$PreferredAdapter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$PreferredAdapter;
    .registers 2

    const-class v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$PreferredAdapter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$PreferredAdapter;

    return-object v0
.end method

.method public static values()[Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$PreferredAdapter;
    .registers 1

    sget-object v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$PreferredAdapter;->c:[Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$PreferredAdapter;

    invoke-virtual {v0}, [Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$PreferredAdapter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$PreferredAdapter;

    return-object v0
.end method

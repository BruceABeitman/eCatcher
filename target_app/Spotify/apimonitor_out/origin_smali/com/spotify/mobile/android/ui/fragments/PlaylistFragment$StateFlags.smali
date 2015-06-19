.class final enum Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;

.field public static final enum b:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;

.field public static final enum c:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;

.field public static final enum d:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;

.field public static final enum e:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;

.field public static final enum f:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;

.field public static final enum g:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;

.field public static final enum h:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;

.field public static final enum i:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;

.field public static final enum j:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;

.field public static final enum k:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;

.field public static final enum l:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;

.field private static final synthetic m:[Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;

    const-string v1, "VIEW_CREATED"

    invoke-direct {v0, v1, v3}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;

    new-instance v0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;

    const-string v1, "METADATA_LOADED"

    invoke-direct {v0, v1, v4}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;->b:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;

    new-instance v0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;

    const-string v1, "TRACKS_LOADED"

    invoke-direct {v0, v1, v5}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;->c:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;

    new-instance v0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;

    const-string v1, "TRACKS_LOADED_WITH_FILTER"

    invoke-direct {v0, v1, v6}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;->d:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;

    new-instance v0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;

    const-string v1, "HAVE_TRACKS"

    invoke-direct {v0, v1, v7}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;->e:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;

    new-instance v0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;

    const-string v1, "HAVE_FILTER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;->f:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;

    new-instance v0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;

    const-string v1, "FILTER_FOCUSED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;->g:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;

    new-instance v0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;

    const-string v1, "FILTER_UPDATE_LOADED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;->h:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;

    new-instance v0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;

    const-string v1, "LIST_IS_SETUP"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;->i:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;

    new-instance v0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;

    const-string v1, "LIST_SCROLLED_TO_POSITION"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;->j:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;

    new-instance v0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;

    const-string v1, "LIST_SCROLLED_TOP_OFFSET"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;->k:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;

    new-instance v0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;

    const-string v1, "LIST_IS_SHOWN"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;->l:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;

    sget-object v1, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;

    aput-object v1, v0, v3

    sget-object v1, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;->b:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;

    aput-object v1, v0, v4

    sget-object v1, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;->c:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;

    aput-object v1, v0, v5

    sget-object v1, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;->d:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;

    aput-object v1, v0, v6

    sget-object v1, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;->e:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;->f:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;->g:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;->h:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;->i:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;->j:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;->k:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;->l:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;

    aput-object v2, v0, v1

    sput-object v0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;->m:[Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;

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

.method public static valueOf(Ljava/lang/String;)Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;
    .registers 2

    const-class v0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;

    return-object v0
.end method

.method public static values()[Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;
    .registers 1

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;->m:[Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;

    invoke-virtual {v0}, [Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;

    return-object v0
.end method

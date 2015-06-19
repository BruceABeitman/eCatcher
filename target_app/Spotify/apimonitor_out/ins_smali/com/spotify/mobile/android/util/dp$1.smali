.class final synthetic Lcom/spotify/mobile/android/util/dp$1;
.super Ljava/lang/Object;
.source "SourceFile"
.field static final synthetic a:[I
.method static constructor <clinit>()V
.registers 3
invoke-static {}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->values()[Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;
move-result-object v0
array-length v0, v0
new-array v0, v0, [I
sput-object v0, Lcom/spotify/mobile/android/util/dp$1;->a:[I
:try_start_9
sget-object v0, Lcom/spotify/mobile/android/util/dp$1;->a:[I
sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->d:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;
invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I
move-result v1
const/4 v2, 0x1
aput v2, v0, v1
:goto_14
:try_start_14
:try_end_14
.catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_7f
sget-object v0, Lcom/spotify/mobile/android/util/dp$1;->a:[I
sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->s:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;
invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I
move-result v1
const/4 v2, 0x2
aput v2, v0, v1
:try_end_1f
.catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_7d
:try_start_1f
:goto_1f
sget-object v0, Lcom/spotify/mobile/android/util/dp$1;->a:[I
sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->h:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;
invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I
move-result v1
const/4 v2, 0x3
aput v2, v0, v1
:try_start_2a
:goto_2a
:try_end_2a
.catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_7b
sget-object v0, Lcom/spotify/mobile/android/util/dp$1;->a:[I
sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->u:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;
invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I
move-result v1
const/4 v2, 0x4
aput v2, v0, v1
:goto_35
:try_start_35
:try_end_35
.catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_79
sget-object v0, Lcom/spotify/mobile/android/util/dp$1;->a:[I
sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->P:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;
invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I
move-result v1
const/4 v2, 0x5
aput v2, v0, v1
:try_end_40
.catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_77
:goto_40
:try_start_40
sget-object v0, Lcom/spotify/mobile/android/util/dp$1;->a:[I
sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->aj:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;
invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I
move-result v1
const/4 v2, 0x6
aput v2, v0, v1
:goto_4b
:try_start_4b
:try_end_4b
.catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_75
sget-object v0, Lcom/spotify/mobile/android/util/dp$1;->a:[I
sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ak:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;
invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I
move-result v1
const/4 v2, 0x7
aput v2, v0, v1
:goto_56
:try_start_56
:try_end_56
.catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_73
sget-object v0, Lcom/spotify/mobile/android/util/dp$1;->a:[I
sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->al:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;
invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I
move-result v1
const/16 v2, 0x8
aput v2, v0, v1
:try_end_62
.catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_62} :catch_71
:goto_62
:try_start_62
sget-object v0, Lcom/spotify/mobile/android/util/dp$1;->a:[I
sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->r:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;
invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I
move-result v1
const/16 v2, 0x9
aput v2, v0, v1
:goto_6e
:try_end_6e
.catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6e} :catch_6f
return-void
:catch_6f
move-exception v0
goto :goto_6e
:catch_71
move-exception v0
goto :goto_62
:catch_73
move-exception v0
goto :goto_56
:catch_75
move-exception v0
goto :goto_4b
:catch_77
move-exception v0
goto :goto_40
:catch_79
move-exception v0
goto :goto_35
:catch_7b
move-exception v0
goto :goto_2a
:catch_7d
move-exception v0
goto :goto_1f
:catch_7f
move-exception v0
goto :goto_14
.end method
.class final synthetic Lcom/spotify/mobile/android/spotlets/search/adapter/d$1;
.super Ljava/lang/Object;
.source "SourceFile"
.field static final synthetic a:[I
.method static constructor <clinit>()V
.registers 3
invoke-static {}, Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;->values()[Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;
move-result-object v0
array-length v0, v0
new-array v0, v0, [I
sput-object v0, Lcom/spotify/mobile/android/spotlets/search/adapter/d$1;->a:[I
:try_start_9
sget-object v0, Lcom/spotify/mobile/android/spotlets/search/adapter/d$1;->a:[I
sget-object v1, Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;->a:Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;->ordinal()I
move-result v1
const/4 v2, 0x1
aput v2, v0, v1
:goto_14
:try_start_14
:try_end_14
.catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_63
sget-object v0, Lcom/spotify/mobile/android/spotlets/search/adapter/d$1;->a:[I
sget-object v1, Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;->e:Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;->ordinal()I
move-result v1
const/4 v2, 0x2
aput v2, v0, v1
:try_end_1f
.catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_61
:try_start_1f
:goto_1f
sget-object v0, Lcom/spotify/mobile/android/spotlets/search/adapter/d$1;->a:[I
sget-object v1, Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;->c:Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;->ordinal()I
move-result v1
const/4 v2, 0x3
aput v2, v0, v1
:try_start_2a
:goto_2a
:try_end_2a
.catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_5f
sget-object v0, Lcom/spotify/mobile/android/spotlets/search/adapter/d$1;->a:[I
sget-object v1, Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;->d:Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;->ordinal()I
move-result v1
const/4 v2, 0x4
aput v2, v0, v1
:goto_35
:try_start_35
:try_end_35
.catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_5d
sget-object v0, Lcom/spotify/mobile/android/spotlets/search/adapter/d$1;->a:[I
sget-object v1, Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;->h:Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;->ordinal()I
move-result v1
const/4 v2, 0x5
aput v2, v0, v1
:try_end_40
.catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_5b
:goto_40
:try_start_40
sget-object v0, Lcom/spotify/mobile/android/spotlets/search/adapter/d$1;->a:[I
sget-object v1, Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;->i:Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;->ordinal()I
move-result v1
const/4 v2, 0x6
aput v2, v0, v1
:goto_4b
:try_start_4b
:try_end_4b
.catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_59
sget-object v0, Lcom/spotify/mobile/android/spotlets/search/adapter/d$1;->a:[I
sget-object v1, Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;->g:Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;->ordinal()I
move-result v1
const/4 v2, 0x7
aput v2, v0, v1
:goto_56
:try_end_56
.catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_57
return-void
:catch_57
move-exception v0
goto :goto_56
:catch_59
move-exception v0
goto :goto_4b
:catch_5b
move-exception v0
goto :goto_40
:catch_5d
move-exception v0
goto :goto_35
:catch_5f
move-exception v0
goto :goto_2a
:catch_61
move-exception v0
goto :goto_1f
:catch_63
move-exception v0
goto :goto_14
.end method
.class synthetic Lcom/handmark/pulltorefresh/library/internal/LoadingLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"
.field static final synthetic $SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode:[I
.field static final synthetic $SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation:[I
.method static constructor <clinit>()V
.registers 3
invoke-static {}, Lcom/handmark/pulltorefresh/library/g;->values()[Lcom/handmark/pulltorefresh/library/g;
move-result-object v0
array-length v0, v0
new-array v0, v0, [I
sput-object v0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout$1;->$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode:[I
:try_start_9
sget-object v0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout$1;->$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode:[I
sget-object v1, Lcom/handmark/pulltorefresh/library/g;->c:Lcom/handmark/pulltorefresh/library/g;
invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/g;->ordinal()I
move-result v1
const/4 v2, 0x1
aput v2, v0, v1
:try_start_14
:goto_14
:try_end_14
.catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_45
sget-object v0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout$1;->$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode:[I
sget-object v1, Lcom/handmark/pulltorefresh/library/g;->b:Lcom/handmark/pulltorefresh/library/g;
invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/g;->ordinal()I
move-result v1
const/4 v2, 0x2
aput v2, v0, v1
:goto_1f
:try_end_1f
.catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_43
invoke-static {}, Lcom/handmark/pulltorefresh/library/m;->values()[Lcom/handmark/pulltorefresh/library/m;
move-result-object v0
array-length v0, v0
new-array v0, v0, [I
sput-object v0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout$1;->$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation:[I
:try_start_28
sget-object v0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout$1;->$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation:[I
sget-object v1, Lcom/handmark/pulltorefresh/library/m;->b:Lcom/handmark/pulltorefresh/library/m;
invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/m;->ordinal()I
move-result v1
const/4 v2, 0x1
aput v2, v0, v1
:goto_33
:try_start_33
:try_end_33
.catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_41
sget-object v0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout$1;->$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation:[I
sget-object v1, Lcom/handmark/pulltorefresh/library/m;->a:Lcom/handmark/pulltorefresh/library/m;
invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/m;->ordinal()I
move-result v1
const/4 v2, 0x2
aput v2, v0, v1
:try_end_3e
.catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3f
:goto_3e
return-void
:catch_3f
move-exception v0
goto :goto_3e
:catch_41
move-exception v0
goto :goto_33
:catch_43
move-exception v0
goto :goto_1f
:catch_45
move-exception v0
goto :goto_14
.end method
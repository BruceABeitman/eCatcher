.class synthetic Lcom/twidroid/fragments/base/a$3;
.super Ljava/lang/Object;
.source "SourceFile"
.field static final synthetic a:[I
.method static constructor <clinit>()V
.registers 3
invoke-static {}, Lcom/handmark/pulltorefresh/library/o;->values()[Lcom/handmark/pulltorefresh/library/o;
move-result-object v0
array-length v0, v0
new-array v0, v0, [I
sput-object v0, Lcom/twidroid/fragments/base/a$3;->a:[I
:try_start_9
sget-object v0, Lcom/twidroid/fragments/base/a$3;->a:[I
sget-object v1, Lcom/handmark/pulltorefresh/library/o;->d:Lcom/handmark/pulltorefresh/library/o;
invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/o;->ordinal()I
move-result v1
const/4 v2, 0x1
aput v2, v0, v1
:try_start_14
:goto_14
:try_end_14
.catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_22
sget-object v0, Lcom/twidroid/fragments/base/a$3;->a:[I
sget-object v1, Lcom/handmark/pulltorefresh/library/o;->a:Lcom/handmark/pulltorefresh/library/o;
invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/o;->ordinal()I
move-result v1
const/4 v2, 0x2
aput v2, v0, v1
:goto_1f
:try_end_1f
.catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_20
return-void
:catch_20
move-exception v0
goto :goto_1f
:catch_22
move-exception v0
goto :goto_14
.end method
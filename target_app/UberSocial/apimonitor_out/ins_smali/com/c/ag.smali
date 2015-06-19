.class public abstract Lcom/c/ag;
.super Ljava/lang/Object;
.field public static final a:Lcom/c/ag;
.field static final synthetic b:Z
.field public static c:I
.field private static d:Lcom/c/ag;
.field private static final e:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 11
const/4 v2, 0x0
const/4 v0, 0x1
const/4 v1, 0x0
const-string v3, "!zz\u001e\u0017bhqMC2i{M\u000c6bd\\\u0010"
invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C
move-result-object v3
array-length v4, v3
if-gt v4, v0, :cond_63
move v5, v1
:cond_d
move-object v6, v3
move v7, v5
move v10, v4
move-object v4, v3
move v3, v10
:goto_12
aget-char v9, v4, v5
rem-int/lit8 v8, v7, 0x5
packed-switch v8, :pswitch_data_68
const/16 v8, 0x63
:goto_1b
xor-int/2addr v8, v9
int-to-char v8, v8
aput-char v8, v4, v5
add-int/lit8 v5, v7, 0x1
if-nez v3, :cond_27
move-object v4, v6
move v7, v5
move v5, v3
goto :goto_12
:cond_27
move v4, v3
move-object v3, v6
:goto_29
if-gt v4, v5, :cond_d
new-instance v4, Ljava/lang/String;
invoke-direct {v4, v3}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v3
sput-object v3, Lcom/c/ag;->e:Ljava/lang/String;
const-class v3, Lcom/c/ag;
invoke-virtual {v3}, Ljava/lang/Class;->desiredAssertionStatus()Z
move-result v3
if-nez v3, :cond_4a
:goto_3e
sput-boolean v0, Lcom/c/ag;->b:Z
:try_start_40
new-instance v0, Lcom/c/al;
invoke-direct {v0}, Lcom/c/al;-><init>()V
:goto_45
:try_end_45
.catch Lcom/c/bw; {:try_start_40 .. :try_end_45} :catch_4c
sput-object v0, Lcom/c/ag;->a:Lcom/c/ag;
sput-object v2, Lcom/c/ag;->d:Lcom/c/ag;
return-void
:cond_4a
move v0, v1
goto :goto_3e
:catch_4c
move-exception v0
sget-boolean v0, Lcom/c/ag;->b:Z
if-nez v0, :cond_65
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
:pswitch_57
const/16 v8, 0x42
goto :goto_1b
:pswitch_5a
const/16 v8, 0x1b
goto :goto_1b
:pswitch_5d
const/16 v8, 0x14
goto :goto_1b
:pswitch_60
const/16 v8, 0x39
goto :goto_1b
:cond_63
move v5, v1
goto :goto_29
:cond_65
move-object v0, v2
goto :goto_45
nop
:pswitch_data_68
.packed-switch 0x0
:pswitch_57
:pswitch_5a
:pswitch_5d
:pswitch_60
.end packed-switch
.end method
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(Lcom/c/ag;)V
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
sget-object v1, Lcom/c/ag;->e:Ljava/lang/String;
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public static b(Lcom/c/b;)Lcom/c/ag;
.registers 2
sget-object v0, Lcom/c/ag;->d:Lcom/c/ag;
if-nez v0, :cond_a
new-instance v0, Lcom/c/aq;
invoke-direct {v0, p0}, Lcom/c/aq;-><init>(Lcom/c/b;)V
:goto_9
return-object v0
:cond_a
sget-object v0, Lcom/c/ag;->d:Lcom/c/ag;
invoke-virtual {v0, p0}, Lcom/c/ag;->a(Lcom/c/b;)Lcom/c/ag;
move-result-object v0
goto :goto_9
.end method
.method protected abstract a(Lcom/c/b;)Lcom/c/ag;
.end method
.method public abstract a()Ljava/lang/String;
.end method
.method public abstract b()Ljava/lang/String;
.end method
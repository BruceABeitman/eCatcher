.class public abstract Lcom/c/am;
.super Lcom/c/co;
.field public static final a:Lcom/c/am;
.field public static b:Z
.field private static c:Lcom/c/am;
.field private static final d:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 8
const-string v0, "\t*A\u000f^J8J\\\n\u001a9@\\E\u001e2_MY"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
const/4 v2, 0x0
const/4 v3, 0x1
if-gt v1, v3, :cond_27
:cond_b
move-object v3, v0
move v4, v2
move v7, v1
move-object v1, v0
move v0, v7
:goto_10
aget-char v6, v1, v2
rem-int/lit8 v5, v4, 0x5
packed-switch v5, :pswitch_data_4c
const/16 v5, 0x2a
:goto_19
xor-int/2addr v5, v6
int-to-char v5, v5
aput-char v5, v1, v2
add-int/lit8 v2, v4, 0x1
if-nez v0, :cond_25
move-object v1, v3
move v4, v2
move v2, v0
goto :goto_10
:cond_25
move v1, v0
move-object v0, v3
:cond_27
if-gt v1, v2, :cond_b
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/c/am;->d:Ljava/lang/String;
new-instance v0, Lcom/c/ar;
invoke-direct {v0}, Lcom/c/ar;-><init>()V
sput-object v0, Lcom/c/am;->a:Lcom/c/am;
const/4 v0, 0x0
sput-object v0, Lcom/c/am;->c:Lcom/c/am;
return-void
:pswitch_3f
const/16 v5, 0x6a
goto :goto_19
:pswitch_42
const/16 v5, 0x4b
goto :goto_19
:pswitch_45
const/16 v5, 0x2f
goto :goto_19
:pswitch_48
const/16 v5, 0x28
goto :goto_19
nop
:pswitch_data_4c
.packed-switch 0x0
:pswitch_3f
:pswitch_42
:pswitch_45
:pswitch_48
.end packed-switch
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/c/co;-><init>()V
return-void
.end method
.method public static a(Lcom/c/am;)V
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
sget-object v1, Lcom/c/am;->d:Ljava/lang/String;
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public static b(Lcom/c/b;)Lcom/c/am;
.registers 2
sget-object v0, Lcom/c/am;->c:Lcom/c/am;
if-nez v0, :cond_a
new-instance v0, Lcom/c/aw;
invoke-direct {v0, p0}, Lcom/c/aw;-><init>(Lcom/c/b;)V
:goto_9
return-object v0
:cond_a
sget-object v0, Lcom/c/am;->c:Lcom/c/am;
invoke-virtual {v0, p0}, Lcom/c/am;->a(Lcom/c/b;)Lcom/c/am;
move-result-object v0
goto :goto_9
.end method
.method protected abstract a(Lcom/c/b;)Lcom/c/am;
.end method
.method public abstract a()Ljava/lang/String;
.end method
.method public abstract b()V
.end method
.method public abstract c()V
.end method
.method public abstract d()Ljava/util/List;
.end method
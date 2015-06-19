.class final Lcom/c/cb;
.super Lcom/c/bp;
.field private static final c:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 9
const/4 v6, 0x1
const-string v0, "\u0015Q&/\u0010\u001dG#n\u000c\u001dI\"s\u0006\u001a[8rM\u000eN8"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
const/4 v2, 0x0
if-gt v1, v6, :cond_27
:cond_b
move-object v3, v0
move v4, v2
move v8, v1
move-object v1, v0
move v0, v8
:goto_10
aget-char v7, v1, v2
rem-int/lit8 v5, v4, 0x5
packed-switch v5, :pswitch_data_40
const/16 v5, 0x63
:goto_19
xor-int/2addr v5, v7
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
sput-object v0, Lcom/c/cb;->c:Ljava/lang/String;
return-void
:pswitch_35
const/16 v5, 0x76
goto :goto_19
:pswitch_38
const/16 v5, 0x3e
goto :goto_19
:pswitch_3b
const/16 v5, 0x4b
goto :goto_19
:pswitch_3e
move v5, v6
goto :goto_19
:pswitch_data_40
.packed-switch 0x0
:pswitch_35
:pswitch_38
:pswitch_3b
:pswitch_3e
.end packed-switch
.end method
.method public constructor <init>(Ljava/lang/Class;)V
.registers 2
invoke-direct {p0, p1}, Lcom/c/bp;-><init>(Ljava/lang/Class;)V
return-void
.end method
.method protected a(Ljava/lang/Class;)Lcom/c/bp;
.registers 3
new-instance v0, Lcom/c/cb;
invoke-direct {v0, p1}, Lcom/c/cb;-><init>(Ljava/lang/Class;)V
return-object v0
.end method
.method protected a(Lcom/c/bc;Ljava/lang/String;)V
.registers 6
sget v0, Lcom/c/bc;->g:I
sget-object v1, Lcom/c/cr;->a:[I
invoke-virtual {p1}, Lcom/c/bc;->ordinal()I
move-result v2
aget v1, v1, v2
packed-switch v1, :pswitch_data_30
:cond_d
:goto_d
return-void
:pswitch_e
sget-object v1, Lcom/c/cb;->c:Ljava/lang/String;
invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
if-eqz v0, :cond_d
:pswitch_15
sget-object v1, Lcom/c/cb;->c:Ljava/lang/String;
invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
if-eqz v0, :cond_d
:pswitch_1c
sget-object v1, Lcom/c/cb;->c:Ljava/lang/String;
invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
if-eqz v0, :cond_d
:pswitch_23
sget-object v1, Lcom/c/cb;->c:Ljava/lang/String;
invoke-static {v1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
if-eqz v0, :cond_d
:pswitch_2a
sget-object v0, Lcom/c/cb;->c:Ljava/lang/String;
invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_d
:pswitch_data_30
.packed-switch 0x1
:pswitch_e
:pswitch_15
:pswitch_1c
:pswitch_23
:pswitch_2a
.end packed-switch
.end method
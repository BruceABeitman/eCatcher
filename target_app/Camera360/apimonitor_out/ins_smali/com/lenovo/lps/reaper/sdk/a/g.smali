.class final Lcom/lenovo/lps/reaper/sdk/a/g;
.super Ljava/lang/Object;
.implements Lcom/lenovo/lps/reaper/sdk/a/i;
.field private static a:Ljava/lang/String;
.field private b:[I
.field private c:[I
.field private d:[I
.field private e:[Z
.field private f:[Z
.field private g:[Z
.method static constructor <clinit>()V
.registers 1
const-string/jumbo v0, "DispatchConfig"
sput-object v0, Lcom/lenovo/lps/reaper/sdk/a/g;->a:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/a/g;->a()V
return-void
.end method
.method public final a(Lcom/lenovo/lps/reaper/sdk/b/f;)I
.registers 4
invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/s;->b()I
move-result v0
packed-switch v0, :pswitch_data_2c
iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a/g;->c:[I
invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/b/f;->ordinal()I
move-result v1
aget v0, v0, v1
:goto_f
return v0
:pswitch_10
iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a/g;->b:[I
invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/b/f;->ordinal()I
move-result v1
aget v0, v0, v1
goto :goto_f
:pswitch_19
iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a/g;->c:[I
invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/b/f;->ordinal()I
move-result v1
aget v0, v0, v1
goto :goto_f
:pswitch_22
iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a/g;->d:[I
invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/b/f;->ordinal()I
move-result v1
aget v0, v0, v1
goto :goto_f
nop
:pswitch_data_2c
.packed-switch 0x2
:pswitch_22
:pswitch_19
:pswitch_10
.end packed-switch
.end method
.method public final a()V
.registers 2
sget-object v0, Lcom/lenovo/lps/reaper/sdk/b/b;->f:[Z
iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a/g;->e:[Z
sget-object v0, Lcom/lenovo/lps/reaper/sdk/b/b;->e:[Z
iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a/g;->f:[Z
sget-object v0, Lcom/lenovo/lps/reaper/sdk/b/b;->d:[Z
iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a/g;->g:[Z
sget-object v0, Lcom/lenovo/lps/reaper/sdk/b/b;->b:[I
iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a/g;->b:[I
sget-object v0, Lcom/lenovo/lps/reaper/sdk/b/b;->a:[I
iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a/g;->c:[I
sget-object v0, Lcom/lenovo/lps/reaper/sdk/b/b;->c:[I
iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a/g;->d:[I
return-void
.end method
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
.registers 9
const/4 v1, 0x1
const/4 v2, 0x0
:try_start_2
const-string/jumbo v0, "\u0001"
invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v0
const/4 v3, 0x0
aget-object v3, v0, v3
invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v3
const/4 v4, 0x1
aget-object v0, v0, v4
invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v0
if-lez v0, :cond_a0
:goto_19
invoke-static {}, Lcom/lenovo/lps/reaper/sdk/g/b;->a()Lcom/lenovo/lps/reaper/sdk/g/b;
move-result-object v2
invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/g/b;->h()[I
move-result-object v2
aget v4, v2, v3
div-int/lit8 v4, v4, 0x2
if-gt v0, v4, :cond_a3
:goto_27
if-lez v0, :cond_a8
aget v4, v2, v3
if-ge v0, v4, :cond_a8
if-ltz v3, :cond_a8
array-length v2, v2
if-ge v3, v2, :cond_a8
const-string/jumbo v2, "Dispatch2G"
invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_43
iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/a/g;->b:[I
aput v0, v2, v3
iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/a/g;->e:[Z
aput-boolean v1, v2, v3
:cond_43
const-string/jumbo v2, "Dispatch3G4G"
invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_54
iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/a/g;->c:[I
aput v0, v2, v3
iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/a/g;->f:[Z
aput-boolean v1, v2, v3
:cond_54
const-string/jumbo v2, "DispatchWifi"
invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_65
iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/a/g;->d:[I
aput v0, v2, v3
iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/a/g;->g:[Z
aput-boolean v1, v2, v3
:cond_65
sget-object v2, Lcom/lenovo/lps/reaper/sdk/a/g;->a:Ljava/lang/String;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v5, ":"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v5, "Prio:"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, " Num:"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v3, " Flag:"
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v2, v0}, Lcom/lenovo/lps/reaper/sdk/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V
:goto_9f
return-void
:cond_a0
move v1, v2
goto/16 :goto_19
:cond_a3
aget v0, v2, v3
div-int/lit8 v0, v0, 0x2
goto :goto_27
:cond_a8
new-instance v0, Ljava/lang/Exception;
const-string/jumbo v1, "Prioriy or Number is illegal"
invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V
throw v0
:try_end_b1
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b1} :catch_b1
:catch_b1
move-exception v0
sget-object v1, Lcom/lenovo/lps/reaper/sdk/a/g;->a:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, ". Wrong Value: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_9f
.end method
.method public final a(Ljava/lang/String;)Z
.registers 3
const-string/jumbo v0, "Dispatch2G"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_1b
const-string/jumbo v0, "Dispatch3G4G"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_1b
const-string/jumbo v0, "DispatchWifi"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1d
:cond_1b
const/4 v0, 0x1
:goto_1c
return v0
:cond_1d
const/4 v0, 0x0
goto :goto_1c
.end method
.method public final b(Lcom/lenovo/lps/reaper/sdk/b/f;)Z
.registers 5
const/4 v0, 0x0
invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/s;->c()Z
move-result v1
if-eqz v1, :cond_10
sget-object v1, Lcom/lenovo/lps/reaper/sdk/a/g;->a:Ljava/lang/String;
const-string/jumbo v2, "Now is Roaming"
invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V
:goto_f
return v0
:cond_10
invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/s;->b()I
move-result v1
packed-switch v1, :pswitch_data_3e
:pswitch_17
goto :goto_f
:pswitch_18
sget-object v0, Lcom/lenovo/lps/reaper/sdk/a/g;->a:Ljava/lang/String;
const-string/jumbo v1, "Now is NOTCONCERN"
invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x1
goto :goto_f
:pswitch_22
iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a/g;->e:[Z
invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/b/f;->ordinal()I
move-result v1
aget-boolean v0, v0, v1
goto :goto_f
:pswitch_2b
iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a/g;->f:[Z
invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/b/f;->ordinal()I
move-result v1
aget-boolean v0, v0, v1
goto :goto_f
:pswitch_34
iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a/g;->g:[Z
invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/b/f;->ordinal()I
move-result v1
aget-boolean v0, v0, v1
goto :goto_f
nop
:pswitch_data_3e
.packed-switch 0x0
:pswitch_18
:pswitch_17
:pswitch_34
:pswitch_2b
:pswitch_22
.end packed-switch
.end method
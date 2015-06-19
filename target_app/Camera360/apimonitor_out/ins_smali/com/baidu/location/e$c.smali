.class public Lcom/baidu/location/e$c;
.super Ljava/lang/Object;
.field final synthetic a:Lcom/baidu/location/e;
.field private do:Z
.field public for:Ljava/util/List;
.field private if:J
.field private int:J
.method public constructor <init>(Lcom/baidu/location/e;Ljava/util/List;J)V
.registers 8
const-wide/16 v1, 0x0
iput-object p1, p0, Lcom/baidu/location/e$c;->a:Lcom/baidu/location/e;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/baidu/location/e$c;->for:Ljava/util/List;
iput-wide v1, p0, Lcom/baidu/location/e$c;->if:J
iput-wide v1, p0, Lcom/baidu/location/e$c;->int:J
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/baidu/location/e$c;->do:Z
iput-wide p3, p0, Lcom/baidu/location/e$c;->if:J
iput-object p2, p0, Lcom/baidu/location/e$c;->for:Ljava/util/List;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iput-wide v0, p0, Lcom/baidu/location/e$c;->int:J
invoke-direct {p0}, Lcom/baidu/location/e$c;->a()V
invoke-static {}, Lcom/baidu/location/e;->do()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0}, Lcom/baidu/location/e$c;->int()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method private a()V
.registers 9
const/4 v5, 0x0
const/4 v1, 0x1
invoke-virtual {p0}, Lcom/baidu/location/e$c;->try()I
move-result v0
if-ge v0, v1, :cond_9
:cond_8
return-void
:cond_9
iget-object v0, p0, Lcom/baidu/location/e$c;->for:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
add-int/lit8 v0, v0, -0x1
move v3, v0
move v2, v1
:goto_13
if-lt v3, v1, :cond_8
if-eqz v2, :cond_8
move v4, v5
move v2, v5
:goto_19
if-ge v4, v3, :cond_55
iget-object v0, p0, Lcom/baidu/location/e$c;->for:Ljava/util/List;
invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/wifi/ScanResult;
iget v6, v0, Landroid/net/wifi/ScanResult;->level:I
iget-object v0, p0, Lcom/baidu/location/e$c;->for:Ljava/util/List;
add-int/lit8 v7, v4, 0x1
invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/wifi/ScanResult;
iget v0, v0, Landroid/net/wifi/ScanResult;->level:I
if-ge v6, v0, :cond_59
iget-object v0, p0, Lcom/baidu/location/e$c;->for:Ljava/util/List;
add-int/lit8 v2, v4, 0x1
invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/wifi/ScanResult;
iget-object v2, p0, Lcom/baidu/location/e$c;->for:Ljava/util/List;
add-int/lit8 v6, v4, 0x1
iget-object v7, p0, Lcom/baidu/location/e$c;->for:Ljava/util/List;
invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v7
invoke-interface {v2, v6, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
iget-object v2, p0, Lcom/baidu/location/e$c;->for:Ljava/util/List;
invoke-interface {v2, v4, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
move v0, v1
:goto_50
add-int/lit8 v2, v4, 0x1
move v4, v2
move v2, v0
goto :goto_19
:cond_55
add-int/lit8 v0, v3, -0x1
move v3, v0
goto :goto_13
:cond_59
move v0, v2
goto :goto_50
.end method
.method public a(I)Ljava/lang/String;
.registers 16
const/4 v5, 0x0
const/4 v7, 0x1
const/4 v3, 0x0
invoke-virtual {p0}, Lcom/baidu/location/e$c;->try()I
move-result v0
if-ge v0, v7, :cond_b
move-object v0, v5
:goto_a
return-object v0
:cond_b
new-instance v8, Ljava/lang/StringBuffer;
const/16 v0, 0x200
invoke-direct {v8, v0}, Ljava/lang/StringBuffer;-><init>(I)V
iget-object v0, p0, Lcom/baidu/location/e$c;->a:Lcom/baidu/location/e;
invoke-virtual {v0}, Lcom/baidu/location/e;->char()Ljava/lang/String;
move-result-object v9
iget-object v0, p0, Lcom/baidu/location/e$c;->for:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-le v0, p1, :cond_12e
:goto_20
move v6, v3
move v1, v7
move v2, v3
move v4, v3
:goto_24
if-ge v6, p1, :cond_d2
iget-object v0, p0, Lcom/baidu/location/e$c;->for:Ljava/util/List;
invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/wifi/ScanResult;
iget v0, v0, Landroid/net/wifi/ScanResult;->level:I
if-nez v0, :cond_3a
move v0, v1
move v1, v4
:goto_34
add-int/lit8 v4, v6, 0x1
move v6, v4
move v4, v1
move v1, v0
goto :goto_24
:cond_3a
if-eqz v1, :cond_86
const-string/jumbo v0, "&wf="
invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
iget-object v0, p0, Lcom/baidu/location/e$c;->for:Ljava/util/List;
invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/wifi/ScanResult;
iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;
const-string/jumbo v1, ":"
const-string/jumbo v10, ""
invoke-virtual {v0, v1, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v10
invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
iget-object v0, p0, Lcom/baidu/location/e$c;->for:Ljava/util/List;
invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/wifi/ScanResult;
iget v0, v0, Landroid/net/wifi/ScanResult;->level:I
if-gez v0, :cond_66
neg-int v0, v0
:cond_66
const-string/jumbo v1, ";%d;"
new-array v11, v7, [Ljava/lang/Object;
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
aput-object v0, v11, v3
invoke-static {v1, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
add-int/lit8 v1, v4, 0x1
if-eqz v9, :cond_12b
invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_12b
move v0, v1
:goto_83
move v2, v0
move v0, v3
goto :goto_34
:cond_86
const-string/jumbo v0, "|"
invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
iget-object v0, p0, Lcom/baidu/location/e$c;->for:Ljava/util/List;
invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/wifi/ScanResult;
iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;
const-string/jumbo v10, ":"
const-string/jumbo v11, ""
invoke-virtual {v0, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v10
invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
iget-object v0, p0, Lcom/baidu/location/e$c;->for:Ljava/util/List;
invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/wifi/ScanResult;
iget v0, v0, Landroid/net/wifi/ScanResult;->level:I
if-gez v0, :cond_b0
neg-int v0, v0
:cond_b0
const-string/jumbo v11, ";%d;"
new-array v12, v7, [Ljava/lang/Object;
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
aput-object v0, v12, v3
invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
add-int/lit8 v0, v4, 0x1
if-eqz v9, :cond_126
invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_126
move v2, v0
move v13, v1
move v1, v0
move v0, v13
goto/16 :goto_34
:cond_d2
if-nez v1, :cond_123
invoke-static {}, Lcom/baidu/location/e;->do()Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v1, "&wf_n="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string/jumbo v0, "&wf_st="
invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
iget-wide v0, p0, Lcom/baidu/location/e$c;->if:J
invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;
const-string/jumbo v0, "&wf_et="
invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
iget-wide v0, p0, Lcom/baidu/location/e$c;->int:J
invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;
if-lez v2, :cond_11d
iput-boolean v7, p0, Lcom/baidu/location/e$c;->do:Z
:cond_11d
invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
goto/16 :goto_a
:cond_123
move-object v0, v5
goto/16 :goto_a
:cond_126
move v13, v1
move v1, v0
move v0, v13
goto/16 :goto_34
:cond_12b
move v0, v2
goto/16 :goto_83
:cond_12e
move p1, v0
goto/16 :goto_20
.end method
.method public a(Lcom/baidu/location/e$c;)Z
.registers 3
sget v0, Lcom/baidu/location/j;->a:F
invoke-virtual {p0, p1, p0, v0}, Lcom/baidu/location/e$c;->a(Lcom/baidu/location/e$c;Lcom/baidu/location/e$c;F)Z
move-result v0
return v0
.end method
.method public a(Lcom/baidu/location/e$c;Lcom/baidu/location/e$c;F)Z
.registers 16
const/4 v2, 0x1
const/4 v3, 0x0
if-eqz p1, :cond_6
if-nez p2, :cond_8
:cond_6
move v0, v3
:goto_7
return v0
:cond_8
iget-object v6, p1, Lcom/baidu/location/e$c;->for:Ljava/util/List;
iget-object v7, p2, Lcom/baidu/location/e$c;->for:Ljava/util/List;
if-ne v6, v7, :cond_10
move v0, v2
goto :goto_7
:cond_10
if-eqz v6, :cond_14
if-nez v7, :cond_16
:cond_14
move v0, v3
goto :goto_7
:cond_16
invoke-interface {v6}, Ljava/util/List;->size()I
move-result v8
invoke-interface {v7}, Ljava/util/List;->size()I
move-result v9
add-int v0, v8, v9
int-to-float v10, v0
if-nez v8, :cond_27
if-nez v9, :cond_27
move v0, v2
goto :goto_7
:cond_27
if-eqz v8, :cond_2b
if-nez v9, :cond_2d
:cond_2b
move v0, v3
goto :goto_7
:cond_2d
move v5, v3
move v1, v3
:goto_2f
if-ge v5, v8, :cond_59
invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/wifi/ScanResult;
iget-object v11, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;
if-nez v11, :cond_41
move v0, v1
:goto_3c
add-int/lit8 v1, v5, 0x1
move v5, v1
move v1, v0
goto :goto_2f
:cond_41
move v4, v3
:goto_42
if-ge v4, v9, :cond_8b
invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/wifi/ScanResult;
iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;
invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_55
add-int/lit8 v0, v1, 0x1
goto :goto_3c
:cond_55
add-int/lit8 v0, v4, 0x1
move v4, v0
goto :goto_42
:cond_59
invoke-static {}, Lcom/baidu/location/e;->do()Ljava/lang/String;
move-result-object v0
const-string/jumbo v4, "same %d,total %f,rate %f..."
const/4 v5, 0x3
new-array v5, v5, [Ljava/lang/Object;
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
aput-object v6, v5, v3
invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v6
aput-object v6, v5, v2
const/4 v6, 0x2
invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v7
aput-object v7, v5, v6
invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-static {v0, v4}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
mul-int/lit8 v0, v1, 0x2
int-to-float v0, v0
mul-float v1, v10, p3
cmpl-float v0, v0, v1
if-ltz v0, :cond_88
move v0, v2
goto :goto_7
:cond_88
move v0, v3
goto/16 :goto_7
:cond_8b
move v0, v1
goto :goto_3c
.end method
.method public byte()Ljava/lang/String;
.registers 2
const/16 v0, 0xf
:try_start_2
invoke-virtual {p0, v0}, Lcom/baidu/location/e$c;->a(I)Ljava/lang/String;
:try_end_5
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_7
move-result-object v0
:goto_6
return-object v0
:catch_7
move-exception v0
const/4 v0, 0x0
goto :goto_6
.end method
.method public case()Z
.registers 2
iget-boolean v0, p0, Lcom/baidu/location/e$c;->do:Z
return v0
.end method
.method public char()Ljava/lang/String;
.registers 2
:try_start_0
sget v0, Lcom/baidu/location/j;->Y:I
invoke-virtual {p0, v0}, Lcom/baidu/location/e$c;->a(I)Ljava/lang/String;
:try_end_5
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7
move-result-object v0
:goto_6
return-object v0
:catch_7
move-exception v0
const/4 v0, 0x0
goto :goto_6
.end method
.method public do()I
.registers 4
const/4 v2, 0x0
move v1, v2
:goto_2
invoke-virtual {p0}, Lcom/baidu/location/e$c;->try()I
move-result v0
if-ge v1, v0, :cond_16
iget-object v0, p0, Lcom/baidu/location/e$c;->for:Ljava/util/List;
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/wifi/ScanResult;
iget v0, v0, Landroid/net/wifi/ScanResult;->level:I
neg-int v0, v0
if-lez v0, :cond_17
move v2, v0
:cond_16
return v2
:cond_17
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_2
.end method
.method public do(Lcom/baidu/location/e$c;)Z
.registers 9
const/4 v2, 0x0
iget-object v0, p0, Lcom/baidu/location/e$c;->for:Ljava/util/List;
if-eqz v0, :cond_63
if-eqz p1, :cond_63
iget-object v0, p1, Lcom/baidu/location/e$c;->for:Ljava/util/List;
if-eqz v0, :cond_63
iget-object v0, p0, Lcom/baidu/location/e$c;->for:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
iget-object v1, p1, Lcom/baidu/location/e$c;->for:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v1
if-ge v0, v1, :cond_55
iget-object v0, p0, Lcom/baidu/location/e$c;->for:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
move v1, v0
:goto_20
move v3, v2
:goto_21
if-ge v3, v1, :cond_61
iget-object v0, p0, Lcom/baidu/location/e$c;->for:Ljava/util/List;
invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/wifi/ScanResult;
iget-object v4, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;
iget-object v0, p0, Lcom/baidu/location/e$c;->for:Ljava/util/List;
invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/wifi/ScanResult;
iget v5, v0, Landroid/net/wifi/ScanResult;->level:I
iget-object v0, p1, Lcom/baidu/location/e$c;->for:Ljava/util/List;
invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/wifi/ScanResult;
iget-object v6, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;
iget-object v0, p1, Lcom/baidu/location/e$c;->for:Ljava/util/List;
invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/wifi/ScanResult;
iget v0, v0, Landroid/net/wifi/ScanResult;->level:I
invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_53
if-eq v5, v0, :cond_5d
:cond_53
move v0, v2
:goto_54
return v0
:cond_55
iget-object v0, p1, Lcom/baidu/location/e$c;->for:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
move v1, v0
goto :goto_20
:cond_5d
add-int/lit8 v0, v3, 0x1
move v3, v0
goto :goto_21
:cond_61
const/4 v0, 0x1
goto :goto_54
:cond_63
move v0, v2
goto :goto_54
.end method
.method public else()Ljava/lang/String;
.registers 10
const/16 v0, 0xa
const/4 v5, 0x1
const/4 v3, 0x0
new-instance v6, Ljava/lang/StringBuffer;
const/16 v1, 0x200
invoke-direct {v6, v1}, Ljava/lang/StringBuffer;-><init>(I)V
const-string/jumbo v1, "wifi info:"
invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
invoke-virtual {p0}, Lcom/baidu/location/e$c;->try()I
move-result v1
if-ge v1, v5, :cond_1c
invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
:goto_1b
return-object v0
:cond_1c
iget-object v1, p0, Lcom/baidu/location/e$c;->for:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v1
if-le v1, v0, :cond_25
move v1, v0
:cond_25
move v4, v3
move v2, v5
:goto_27
if-ge v4, v1, :cond_b3
iget-object v0, p0, Lcom/baidu/location/e$c;->for:Ljava/util/List;
invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/wifi/ScanResult;
iget v0, v0, Landroid/net/wifi/ScanResult;->level:I
if-nez v0, :cond_3b
move v0, v2
:goto_36
add-int/lit8 v2, v4, 0x1
move v4, v2
move v2, v0
goto :goto_27
:cond_3b
if-eqz v2, :cond_78
const-string/jumbo v0, "wifi="
invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
iget-object v0, p0, Lcom/baidu/location/e$c;->for:Ljava/util/List;
invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/wifi/ScanResult;
iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;
const-string/jumbo v2, ":"
const-string/jumbo v7, ""
invoke-virtual {v0, v2, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
iget-object v0, p0, Lcom/baidu/location/e$c;->for:Ljava/util/List;
invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/wifi/ScanResult;
iget v0, v0, Landroid/net/wifi/ScanResult;->level:I
const-string/jumbo v2, ";%d;"
new-array v7, v5, [Ljava/lang/Object;
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
aput-object v0, v7, v3
invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move v0, v3
goto :goto_36
:cond_78
const-string/jumbo v0, ";"
invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
iget-object v0, p0, Lcom/baidu/location/e$c;->for:Ljava/util/List;
invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/wifi/ScanResult;
iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;
const-string/jumbo v7, ":"
const-string/jumbo v8, ""
invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
iget-object v0, p0, Lcom/baidu/location/e$c;->for:Ljava/util/List;
invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/wifi/ScanResult;
iget v0, v0, Landroid/net/wifi/ScanResult;->level:I
const-string/jumbo v7, ",%d;"
new-array v8, v5, [Ljava/lang/Object;
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
aput-object v0, v8, v3
invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move v0, v2
goto :goto_36
:cond_b3
invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
goto/16 :goto_1b
.end method
.method public for()Z
.registers 5
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iget-wide v2, p0, Lcom/baidu/location/e$c;->int:J
sub-long/2addr v0, v2
const-wide/16 v2, 0xbb8
cmp-long v0, v0, v2
if-gez v0, :cond_f
const/4 v0, 0x1
:goto_e
return v0
:cond_f
const/4 v0, 0x0
goto :goto_e
.end method
.method public if(I)Ljava/lang/String;
.registers 7
const/4 v1, 0x1
const/4 v0, 0x0
if-eqz p1, :cond_a
invoke-virtual {p0}, Lcom/baidu/location/e$c;->try()I
move-result v2
if-ge v2, v1, :cond_c
:cond_a
const/4 v0, 0x0
:goto_b
return-object v0
:cond_c
new-instance v4, Ljava/lang/StringBuffer;
const/16 v2, 0x100
invoke-direct {v4, v2}, Ljava/lang/StringBuffer;-><init>(I)V
move v2, v0
move v3, v1
move v1, v0
:goto_16
sget v0, Lcom/baidu/location/j;->Y:I
if-ge v1, v0, :cond_55
and-int v0, v3, p1
if-eqz v0, :cond_48
if-nez v2, :cond_4e
const-string/jumbo v0, "&ssid="
invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:goto_26
iget-object v0, p0, Lcom/baidu/location/e$c;->for:Ljava/util/List;
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/wifi/ScanResult;
iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;
invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string/jumbo v0, ";"
invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
iget-object v0, p0, Lcom/baidu/location/e$c;->for:Ljava/util/List;
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/wifi/ScanResult;
iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;
invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
add-int/lit8 v2, v2, 0x1
:cond_48
shl-int/lit8 v3, v3, 0x1
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_16
:cond_4e
const-string/jumbo v0, "|"
invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_26
:cond_55
invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_b
.end method
.method public if()Z
.registers 5
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iget-wide v2, p0, Lcom/baidu/location/e$c;->if:J
sub-long/2addr v0, v2
const-wide/16 v2, 0xbb8
cmp-long v0, v0, v2
if-gez v0, :cond_f
const/4 v0, 0x1
:goto_e
return v0
:cond_f
const/4 v0, 0x0
goto :goto_e
.end method
.method public if(Lcom/baidu/location/e$c;)Z
.registers 7
const/4 v2, 0x0
iget-object v0, p0, Lcom/baidu/location/e$c;->for:Ljava/util/List;
if-eqz v0, :cond_4d
if-eqz p1, :cond_4d
iget-object v0, p1, Lcom/baidu/location/e$c;->for:Ljava/util/List;
if-eqz v0, :cond_4d
iget-object v0, p0, Lcom/baidu/location/e$c;->for:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
iget-object v1, p1, Lcom/baidu/location/e$c;->for:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v1
if-ge v0, v1, :cond_3f
iget-object v0, p0, Lcom/baidu/location/e$c;->for:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
move v1, v0
:goto_20
move v3, v2
:goto_21
if-ge v3, v1, :cond_4b
iget-object v0, p0, Lcom/baidu/location/e$c;->for:Ljava/util/List;
invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/wifi/ScanResult;
iget-object v4, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;
iget-object v0, p1, Lcom/baidu/location/e$c;->for:Ljava/util/List;
invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/wifi/ScanResult;
iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;
invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_47
move v0, v2
:goto_3e
return v0
:cond_3f
iget-object v0, p1, Lcom/baidu/location/e$c;->for:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
move v1, v0
goto :goto_20
:cond_47
add-int/lit8 v0, v3, 0x1
move v3, v0
goto :goto_21
:cond_4b
const/4 v0, 0x1
goto :goto_3e
:cond_4d
move v0, v2
goto :goto_3e
.end method
.method public int()Ljava/lang/String;
.registers 8
const/4 v2, 0x0
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v0, "wifi="
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/baidu/location/e$c;->for:Ljava/util/List;
if-nez v0, :cond_15
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_14
return-object v0
:cond_15
move v1, v2
:goto_16
iget-object v0, p0, Lcom/baidu/location/e$c;->for:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-ge v1, v0, :cond_56
iget-object v0, p0, Lcom/baidu/location/e$c;->for:Ljava/util/List;
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/wifi/ScanResult;
iget v4, v0, Landroid/net/wifi/ScanResult;->level:I
iget-object v0, p0, Lcom/baidu/location/e$c;->for:Ljava/util/List;
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/wifi/ScanResult;
iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;
const-string/jumbo v5, ":"
const-string/jumbo v6, ""
invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string/jumbo v0, ",%d;"
const/4 v5, 0x1
new-array v5, v5, [Ljava/lang/Object;
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v5, v2
invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_16
:cond_56
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_14
.end method
.method public new()Z
.registers 5
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iget-wide v2, p0, Lcom/baidu/location/e$c;->int:J
sub-long/2addr v0, v2
const-wide/16 v2, 0x1388
cmp-long v0, v0, v2
if-gez v0, :cond_f
const/4 v0, 0x1
:goto_e
return v0
:cond_f
const/4 v0, 0x0
goto :goto_e
.end method
.method public try()I
.registers 2
iget-object v0, p0, Lcom/baidu/location/e$c;->for:Ljava/util/List;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:cond_6
iget-object v0, p0, Lcom/baidu/location/e$c;->for:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
goto :goto_5
.end method
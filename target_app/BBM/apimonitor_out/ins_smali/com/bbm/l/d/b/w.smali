.class public final Lcom/bbm/l/d/b/w;
.super Ljava/lang/Object;
.source "PaymentUtils.java"
.method public static a()Ljava/lang/String;
.registers 6
const/4 v5, 0x0
new-instance v0, Ljava/math/BigInteger;
const-string v1, "1hxr75s5v8y99hwyfs8pebm3hi852xrqmfdly8g2pc9us1jtvnt96u0unpt3bu4z2igb7vwumgb3nzwyp7et7u0uffri2rq5sqru20rc40emre2xvxwag32zoapz3do5szlltdce68bn7b5v0tl7lsvzketa9i6tp4emjej9ux1y0mihgj0gv21cecmpz0a6lg03dsuma4lng2pig5dx06evbhabv1k51zhx1il4y19fxltvi5k4y23t7ql8rqxt6w99v3le8og75rrzq5x1ov66z2434w55zivzxlaz72u1l57ysyl9cevpuaweppbi86xm2bmemdiov0z2erp62thzl1b7yks1oby4mg6v97kboy9jpxt9z10572nmn5l8rbni2wu3gvlmwdu3xmxba6w9tzg0gbr2tazqf8a0ct5470y3erdh8mcfheekorpan16zjt2buw4a4b93yg0igtmi28dkknp3"
const/16 v2, 0x24
invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V
const-wide/16 v1, 0x50
invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;
move-result-object v1
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
:goto_15
sget-object v3, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;
invoke-virtual {v0, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_31
invoke-virtual {v0, v1}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;
move-result-object v3
aget-object v0, v3, v5
const/4 v4, 0x1
aget-object v3, v3, v4
invoke-virtual {v3}, Ljava/math/BigInteger;->byteValue()B
move-result v3
add-int/lit8 v3, v3, 0x2b
int-to-char v3, v3
invoke-virtual {v2, v5, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;
goto :goto_15
:cond_31
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
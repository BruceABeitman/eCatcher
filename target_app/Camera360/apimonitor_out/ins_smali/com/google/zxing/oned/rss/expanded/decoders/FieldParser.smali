.class final Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;
.super Ljava/lang/Object;
.source "FieldParser.java"
.field private static final FOUR_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;
.field private static final THREE_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;
.field private static final THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;
.field private static final TWO_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;
.field private static final VARIABLE_LENGTH:Ljava/lang/Object;
.method static constructor <clinit>()V
.registers 9
const/4 v8, 0x3
const/4 v7, 0x6
const/4 v6, 0x1
const/4 v5, 0x0
const/4 v4, 0x2
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
sput-object v0, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;
const/16 v0, 0x18
new-array v0, v0, [[Ljava/lang/Object;
new-array v1, v4, [Ljava/lang/Object;
const-string/jumbo v2, "00"
aput-object v2, v1, v5
const/16 v2, 0x12
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v1, v6
aput-object v1, v0, v5
new-array v1, v4, [Ljava/lang/Object;
const-string/jumbo v2, "01"
aput-object v2, v1, v5
const/16 v2, 0xe
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v1, v6
aput-object v1, v0, v6
new-array v1, v4, [Ljava/lang/Object;
const-string/jumbo v2, "02"
aput-object v2, v1, v5
const/16 v2, 0xe
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v1, v6
aput-object v1, v0, v4
new-array v1, v8, [Ljava/lang/Object;
const-string/jumbo v2, "10"
aput-object v2, v1, v5
sget-object v2, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;
aput-object v2, v1, v6
const/16 v2, 0x14
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v1, v4
aput-object v1, v0, v8
const/4 v1, 0x4
new-array v2, v4, [Ljava/lang/Object;
const-string/jumbo v3, "11"
aput-object v3, v2, v5
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v6
aput-object v2, v0, v1
const/4 v1, 0x5
new-array v2, v4, [Ljava/lang/Object;
const-string/jumbo v3, "12"
aput-object v3, v2, v5
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v6
aput-object v2, v0, v1
new-array v1, v4, [Ljava/lang/Object;
const-string/jumbo v2, "13"
aput-object v2, v1, v5
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v1, v6
aput-object v1, v0, v7
const/4 v1, 0x7
new-array v2, v4, [Ljava/lang/Object;
const-string/jumbo v3, "15"
aput-object v3, v2, v5
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v6
aput-object v2, v0, v1
const/16 v1, 0x8
new-array v2, v4, [Ljava/lang/Object;
const-string/jumbo v3, "17"
aput-object v3, v2, v5
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v6
aput-object v2, v0, v1
const/16 v1, 0x9
new-array v2, v4, [Ljava/lang/Object;
const-string/jumbo v3, "20"
aput-object v3, v2, v5
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v6
aput-object v2, v0, v1
const/16 v1, 0xa
new-array v2, v8, [Ljava/lang/Object;
const-string/jumbo v3, "21"
aput-object v3, v2, v5
sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;
aput-object v3, v2, v6
const/16 v3, 0x14
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v4
aput-object v2, v0, v1
const/16 v1, 0xb
new-array v2, v8, [Ljava/lang/Object;
const-string/jumbo v3, "22"
aput-object v3, v2, v5
sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;
aput-object v3, v2, v6
const/16 v3, 0x1d
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v4
aput-object v2, v0, v1
const/16 v1, 0xc
new-array v2, v8, [Ljava/lang/Object;
const-string/jumbo v3, "30"
aput-object v3, v2, v5
sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;
aput-object v3, v2, v6
const/16 v3, 0x8
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v4
aput-object v2, v0, v1
const/16 v1, 0xd
new-array v2, v8, [Ljava/lang/Object;
const-string/jumbo v3, "37"
aput-object v3, v2, v5
sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;
aput-object v3, v2, v6
const/16 v3, 0x8
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v4
aput-object v2, v0, v1
const/16 v1, 0xe
new-array v2, v8, [Ljava/lang/Object;
const-string/jumbo v3, "90"
aput-object v3, v2, v5
sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;
aput-object v3, v2, v6
const/16 v3, 0x1e
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v4
aput-object v2, v0, v1
const/16 v1, 0xf
new-array v2, v8, [Ljava/lang/Object;
const-string/jumbo v3, "91"
aput-object v3, v2, v5
sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;
aput-object v3, v2, v6
const/16 v3, 0x1e
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v4
aput-object v2, v0, v1
const/16 v1, 0x10
new-array v2, v8, [Ljava/lang/Object;
const-string/jumbo v3, "92"
aput-object v3, v2, v5
sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;
aput-object v3, v2, v6
const/16 v3, 0x1e
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v4
aput-object v2, v0, v1
const/16 v1, 0x11
new-array v2, v8, [Ljava/lang/Object;
const-string/jumbo v3, "93"
aput-object v3, v2, v5
sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;
aput-object v3, v2, v6
const/16 v3, 0x1e
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v4
aput-object v2, v0, v1
const/16 v1, 0x12
new-array v2, v8, [Ljava/lang/Object;
const-string/jumbo v3, "94"
aput-object v3, v2, v5
sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;
aput-object v3, v2, v6
const/16 v3, 0x1e
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v4
aput-object v2, v0, v1
const/16 v1, 0x13
new-array v2, v8, [Ljava/lang/Object;
const-string/jumbo v3, "95"
aput-object v3, v2, v5
sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;
aput-object v3, v2, v6
const/16 v3, 0x1e
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v4
aput-object v2, v0, v1
const/16 v1, 0x14
new-array v2, v8, [Ljava/lang/Object;
const-string/jumbo v3, "96"
aput-object v3, v2, v5
sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;
aput-object v3, v2, v6
const/16 v3, 0x1e
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v4
aput-object v2, v0, v1
const/16 v1, 0x15
new-array v2, v8, [Ljava/lang/Object;
const-string/jumbo v3, "97"
aput-object v3, v2, v5
sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;
aput-object v3, v2, v6
const/16 v3, 0x1e
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v4
aput-object v2, v0, v1
const/16 v1, 0x16
new-array v2, v8, [Ljava/lang/Object;
const-string/jumbo v3, "98"
aput-object v3, v2, v5
sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;
aput-object v3, v2, v6
const/16 v3, 0x1e
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v4
aput-object v2, v0, v1
const/16 v1, 0x17
new-array v2, v8, [Ljava/lang/Object;
const-string/jumbo v3, "99"
aput-object v3, v2, v5
sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;
aput-object v3, v2, v6
const/16 v3, 0x1e
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v4
aput-object v2, v0, v1
sput-object v0, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->TWO_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;
const/16 v0, 0x17
new-array v0, v0, [[Ljava/lang/Object;
new-array v1, v8, [Ljava/lang/Object;
const-string/jumbo v2, "240"
aput-object v2, v1, v5
sget-object v2, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;
aput-object v2, v1, v6
const/16 v2, 0x1e
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v1, v4
aput-object v1, v0, v5
new-array v1, v8, [Ljava/lang/Object;
const-string/jumbo v2, "241"
aput-object v2, v1, v5
sget-object v2, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;
aput-object v2, v1, v6
const/16 v2, 0x1e
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v1, v4
aput-object v1, v0, v6
new-array v1, v8, [Ljava/lang/Object;
const-string/jumbo v2, "242"
aput-object v2, v1, v5
sget-object v2, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;
aput-object v2, v1, v6
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v1, v4
aput-object v1, v0, v4
new-array v1, v8, [Ljava/lang/Object;
const-string/jumbo v2, "250"
aput-object v2, v1, v5
sget-object v2, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;
aput-object v2, v1, v6
const/16 v2, 0x1e
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v1, v4
aput-object v1, v0, v8
const/4 v1, 0x4
new-array v2, v8, [Ljava/lang/Object;
const-string/jumbo v3, "251"
aput-object v3, v2, v5
sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;
aput-object v3, v2, v6
const/16 v3, 0x1e
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v4
aput-object v2, v0, v1
const/4 v1, 0x5
new-array v2, v8, [Ljava/lang/Object;
const-string/jumbo v3, "253"
aput-object v3, v2, v5
sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;
aput-object v3, v2, v6
const/16 v3, 0x11
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v4
aput-object v2, v0, v1
new-array v1, v8, [Ljava/lang/Object;
const-string/jumbo v2, "254"
aput-object v2, v1, v5
sget-object v2, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;
aput-object v2, v1, v6
const/16 v2, 0x14
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v1, v4
aput-object v1, v0, v7
const/4 v1, 0x7
new-array v2, v8, [Ljava/lang/Object;
const-string/jumbo v3, "400"
aput-object v3, v2, v5
sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;
aput-object v3, v2, v6
const/16 v3, 0x1e
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v4
aput-object v2, v0, v1
const/16 v1, 0x8
new-array v2, v8, [Ljava/lang/Object;
const-string/jumbo v3, "401"
aput-object v3, v2, v5
sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;
aput-object v3, v2, v6
const/16 v3, 0x1e
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v4
aput-object v2, v0, v1
const/16 v1, 0x9
new-array v2, v4, [Ljava/lang/Object;
const-string/jumbo v3, "402"
aput-object v3, v2, v5
const/16 v3, 0x11
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v6
aput-object v2, v0, v1
const/16 v1, 0xa
new-array v2, v8, [Ljava/lang/Object;
const-string/jumbo v3, "403"
aput-object v3, v2, v5
sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;
aput-object v3, v2, v6
const/16 v3, 0x1e
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v4
aput-object v2, v0, v1
const/16 v1, 0xb
new-array v2, v4, [Ljava/lang/Object;
const-string/jumbo v3, "410"
aput-object v3, v2, v5
const/16 v3, 0xd
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v6
aput-object v2, v0, v1
const/16 v1, 0xc
new-array v2, v4, [Ljava/lang/Object;
const-string/jumbo v3, "411"
aput-object v3, v2, v5
const/16 v3, 0xd
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v6
aput-object v2, v0, v1
const/16 v1, 0xd
new-array v2, v4, [Ljava/lang/Object;
const-string/jumbo v3, "412"
aput-object v3, v2, v5
const/16 v3, 0xd
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v6
aput-object v2, v0, v1
const/16 v1, 0xe
new-array v2, v4, [Ljava/lang/Object;
const-string/jumbo v3, "413"
aput-object v3, v2, v5
const/16 v3, 0xd
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v6
aput-object v2, v0, v1
const/16 v1, 0xf
new-array v2, v4, [Ljava/lang/Object;
const-string/jumbo v3, "414"
aput-object v3, v2, v5
const/16 v3, 0xd
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v6
aput-object v2, v0, v1
const/16 v1, 0x10
new-array v2, v8, [Ljava/lang/Object;
const-string/jumbo v3, "420"
aput-object v3, v2, v5
sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;
aput-object v3, v2, v6
const/16 v3, 0x14
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v4
aput-object v2, v0, v1
const/16 v1, 0x11
new-array v2, v8, [Ljava/lang/Object;
const-string/jumbo v3, "421"
aput-object v3, v2, v5
sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;
aput-object v3, v2, v6
const/16 v3, 0xf
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v4
aput-object v2, v0, v1
const/16 v1, 0x12
new-array v2, v4, [Ljava/lang/Object;
const-string/jumbo v3, "422"
aput-object v3, v2, v5
invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v6
aput-object v2, v0, v1
const/16 v1, 0x13
new-array v2, v8, [Ljava/lang/Object;
const-string/jumbo v3, "423"
aput-object v3, v2, v5
sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;
aput-object v3, v2, v6
const/16 v3, 0xf
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v4
aput-object v2, v0, v1
const/16 v1, 0x14
new-array v2, v4, [Ljava/lang/Object;
const-string/jumbo v3, "424"
aput-object v3, v2, v5
invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v6
aput-object v2, v0, v1
const/16 v1, 0x15
new-array v2, v4, [Ljava/lang/Object;
const-string/jumbo v3, "425"
aput-object v3, v2, v5
invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v6
aput-object v2, v0, v1
const/16 v1, 0x16
new-array v2, v4, [Ljava/lang/Object;
const-string/jumbo v3, "426"
aput-object v3, v2, v5
invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v6
aput-object v2, v0, v1
sput-object v0, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;
const/16 v0, 0x39
new-array v0, v0, [[Ljava/lang/Object;
new-array v1, v4, [Ljava/lang/Object;
const-string/jumbo v2, "310"
aput-object v2, v1, v5
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v1, v6
aput-object v1, v0, v5
new-array v1, v4, [Ljava/lang/Object;
const-string/jumbo v2, "311"
aput-object v2, v1, v5
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v1, v6
aput-object v1, v0, v6
new-array v1, v4, [Ljava/lang/Object;
const-string/jumbo v2, "312"
aput-object v2, v1, v5
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v1, v6
aput-object v1, v0, v4
new-array v1, v4, [Ljava/lang/Object;
const-string/jumbo v2, "313"
aput-object v2, v1, v5
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v1, v6
aput-object v1, v0, v8
const/4 v1, 0x4
new-array v2, v4, [Ljava/lang/Object;
const-string/jumbo v3, "314"
aput-object v3, v2, v5
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v6
aput-object v2, v0, v1
const/4 v1, 0x5
new-array v2, v4, [Ljava/lang/Object;
const-string/jumbo v3, "315"
aput-object v3, v2, v5
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v6
aput-object v2, v0, v1
new-array v1, v4, [Ljava/lang/Object;
const-string/jumbo v2, "316"
aput-object v2, v1, v5
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v1, v6
aput-object v1, v0, v7
const/4 v1, 0x7
new-array v2, v4, [Ljava/lang/Object;
const-string/jumbo v3, "320"
aput-object v3, v2, v5
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v6
aput-object v2, v0, v1
const/16 v1, 0x8
new-array v2, v4, [Ljava/lang/Object;
const-string/jumbo v3, "321"
aput-object v3, v2, v5
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v6
aput-object v2, v0, v1
const/16 v1, 0x9
new-array v2, v4, [Ljava/lang/Object;
const-string/jumbo v3, "322"
aput-object v3, v2, v5
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v6
aput-object v2, v0, v1
const/16 v1, 0xa
new-array v2, v4, [Ljava/lang/Object;
const-string/jumbo v3, "323"
aput-object v3, v2, v5
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v6
aput-object v2, v0, v1
const/16 v1, 0xb
new-array v2, v4, [Ljava/lang/Object;
const-string/jumbo v3, "324"
aput-object v3, v2, v5
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v6
aput-object v2, v0, v1
const/16 v1, 0xc
new-array v2, v4, [Ljava/lang/Object;
const-string/jumbo v3, "325"
aput-object v3, v2, v5
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v6
aput-object v2, v0, v1
const/16 v1, 0xd
new-array v2, v4, [Ljava/lang/Object;
const-string/jumbo v3, "326"
aput-object v3, v2, v5
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v6
aput-object v2, v0, v1
const/16 v1, 0xe
new-array v2, v4, [Ljava/lang/Object;
const-string/jumbo v3, "327"
aput-object v3, v2, v5
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v6
aput-object v2, v0, v1
const/16 v1, 0xf
new-array v2, v4, [Ljava/lang/Object;
const-string/jumbo v3, "328"
aput-object v3, v2, v5
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v6
aput-object v2, v0, v1
const/16 v1, 0x10
new-array v2, v4, [Ljava/lang/Object;
const-string/jumbo v3, "329"
aput-object v3, v2, v5
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v6
aput-object v2, v0, v1
const/16 v1, 0x11
new-array v2, v4, [Ljava/lang/Object;
const-string/jumbo v3, "330"
aput-object v3, v2, v5
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v6
aput-object v2, v0, v1
const/16 v1, 0x12
new-array v2, v4, [Ljava/lang/Object;
const-string/jumbo v3, "331"
aput-object v3, v2, v5
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v6
aput-object v2, v0, v1
const/16 v1, 0x13
new-array v2, v4, [Ljava/lang/Object;
const-string/jumbo v3, "332"
aput-object v3, v2, v5
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v6
aput-object v2, v0, v1
const/16 v1, 0x14
new-array v2, v4, [Ljava/lang/Object;
const-string/jumbo v3, "333"
aput-object v3, v2, v5
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v6
aput-object v2, v0, v1
const/16 v1, 0x15
new-array v2, v4, [Ljava/lang/Object;
const-string/jumbo v3, "334"
aput-object v3, v2, v5
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v6
aput-object v2, v0, v1
const/16 v1, 0x16
new-array v2, v4, [Ljava/lang/Object;
const-string/jumbo v3, "335"
aput-object v3, v2, v5
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v6
aput-object v2, v0, v1
const/16 v1, 0x17
new-array v2, v4, [Ljava/lang/Object;
const-string/jumbo v3, "336"
aput-object v3, v2, v5
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v6
aput-object v2, v0, v1
const/16 v1, 0x18
new-array v2, v4, [Ljava/lang/Object;
const-string/jumbo v3, "340"
aput-object v3, v2, v5
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v6
aput-object v2, v0, v1
const/16 v1, 0x19
new-array v2, v4, [Ljava/lang/Object;
const-string/jumbo v3, "341"
aput-object v3, v2, v5
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v6
aput-object v2, v0, v1
const/16 v1, 0x1a
new-array v2, v4, [Ljava/lang/Object;
const-string/jumbo v3, "342"
aput-object v3, v2, v5
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v6
aput-object v2, v0, v1
const/16 v1, 0x1b
new-array v2, v4, [Ljava/lang/Object;
const-string/jumbo v3, "343"
aput-object v3, v2, v5
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v6
aput-object v2, v0, v1
const/16 v1, 0x1c
new-array v2, v4, [Ljava/lang/Object;
const-string/jumbo v3, "344"
aput-object v3, v2, v5
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v6
aput-object v2, v0, v1
const/16 v1, 0x1d
new-array v2, v4, [Ljava/lang/Object;
const-string/jumbo v3, "345"
aput-object v3, v2, v5
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v6
aput-object v2, v0, v1
const/16 v1, 0x1e
new-array v2, v4, [Ljava/lang/Object;
const-string/jumbo v3, "346"
aput-object v3, v2, v5
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v6
aput-object v2, v0, v1
const/16 v1, 0x1f
new-array v2, v4, [Ljava/lang/Object;
const-string/jumbo v3, "347"
aput-object v3, v2, v5
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v6
aput-object v2, v0, v1
const/16 v1, 0x20
new-array v2, v4, [Ljava/lang/Object;
const-string/jumbo v3, "348"
aput-object v3, v2, v5
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v6
aput-object v2, v0, v1
const/16 v1, 0x21
new-array v2, v4, [Ljava/lang/Object;
const-string/jumbo v3, "349"
aput-object v3, v2, v5
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v6
aput-object v2, v0, v1
const/16 v1, 0x22
new-array v2, v4, [Ljava/lang/Object;
const-string/jumbo v3, "350"
aput-object v3, v2, v5
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v6
aput-object v2, v0, v1
const/16 v1, 0x23
new-array v2, v4, [Ljava/lang/Object;
const-string/jumbo v3, "351"
aput-object v3, v2, v5
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v6
aput-object v2, v0, v1
const/16 v1, 0x24
new-array v2, v4, [Ljava/lang/Object;
const-string/jumbo v3, "352"
aput-object v3, v2, v5
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v6
aput-object v2, v0, v1
const/16 v1, 0x25
new-array v2, v4, [Ljava/lang/Object;
const-string/jumbo v3, "353"
aput-object v3, v2, v5
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v6
aput-object v2, v0, v1
const/16 v1, 0x26
new-array v2, v4, [Ljava/lang/Object;
const-string/jumbo v3, "354"
aput-object v3, v2, v5
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v6
aput-object v2, v0, v1
const/16 v1, 0x27
new-array v2, v4, [Ljava/lang/Object;
const-string/jumbo v3, "355"
aput-object v3, v2, v5
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v6
aput-object v2, v0, v1
const/16 v1, 0x28
new-array v2, v4, [Ljava/lang/Object;
const-string/jumbo v3, "356"
aput-object v3, v2, v5
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v6
aput-object v2, v0, v1
const/16 v1, 0x29
new-array v2, v4, [Ljava/lang/Object;
const-string/jumbo v3, "357"
aput-object v3, v2, v5
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v6
aput-object v2, v0, v1
const/16 v1, 0x2a
new-array v2, v4, [Ljava/lang/Object;
const-string/jumbo v3, "360"
aput-object v3, v2, v5
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v6
aput-object v2, v0, v1
const/16 v1, 0x2b
new-array v2, v4, [Ljava/lang/Object;
const-string/jumbo v3, "361"
aput-object v3, v2, v5
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v6
aput-object v2, v0, v1
const/16 v1, 0x2c
new-array v2, v4, [Ljava/lang/Object;
const-string/jumbo v3, "362"
aput-object v3, v2, v5
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v6
aput-object v2, v0, v1
const/16 v1, 0x2d
new-array v2, v4, [Ljava/lang/Object;
const-string/jumbo v3, "363"
aput-object v3, v2, v5
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v6
aput-object v2, v0, v1
const/16 v1, 0x2e
new-array v2, v4, [Ljava/lang/Object;
const-string/jumbo v3, "364"
aput-object v3, v2, v5
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v6
aput-object v2, v0, v1
const/16 v1, 0x2f
new-array v2, v4, [Ljava/lang/Object;
const-string/jumbo v3, "365"
aput-object v3, v2, v5
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v6
aput-object v2, v0, v1
const/16 v1, 0x30
new-array v2, v4, [Ljava/lang/Object;
const-string/jumbo v3, "366"
aput-object v3, v2, v5
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v6
aput-object v2, v0, v1
const/16 v1, 0x31
new-array v2, v4, [Ljava/lang/Object;
const-string/jumbo v3, "367"
aput-object v3, v2, v5
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v6
aput-object v2, v0, v1
const/16 v1, 0x32
new-array v2, v4, [Ljava/lang/Object;
const-string/jumbo v3, "368"
aput-object v3, v2, v5
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v6
aput-object v2, v0, v1
const/16 v1, 0x33
new-array v2, v4, [Ljava/lang/Object;
const-string/jumbo v3, "369"
aput-object v3, v2, v5
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v6
aput-object v2, v0, v1
const/16 v1, 0x34
new-array v2, v8, [Ljava/lang/Object;
const-string/jumbo v3, "390"
aput-object v3, v2, v5
sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;
aput-object v3, v2, v6
const/16 v3, 0xf
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v4
aput-object v2, v0, v1
const/16 v1, 0x35
new-array v2, v8, [Ljava/lang/Object;
const-string/jumbo v3, "391"
aput-object v3, v2, v5
sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;
aput-object v3, v2, v6
const/16 v3, 0x12
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v4
aput-object v2, v0, v1
const/16 v1, 0x36
new-array v2, v8, [Ljava/lang/Object;
const-string/jumbo v3, "392"
aput-object v3, v2, v5
sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;
aput-object v3, v2, v6
const/16 v3, 0xf
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v4
aput-object v2, v0, v1
const/16 v1, 0x37
new-array v2, v8, [Ljava/lang/Object;
const-string/jumbo v3, "393"
aput-object v3, v2, v5
sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;
aput-object v3, v2, v6
const/16 v3, 0x12
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v4
aput-object v2, v0, v1
const/16 v1, 0x38
new-array v2, v8, [Ljava/lang/Object;
const-string/jumbo v3, "703"
aput-object v3, v2, v5
sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;
aput-object v3, v2, v6
const/16 v3, 0x1e
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v4
aput-object v2, v0, v1
sput-object v0, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;
const/16 v0, 0x12
new-array v0, v0, [[Ljava/lang/Object;
new-array v1, v4, [Ljava/lang/Object;
const-string/jumbo v2, "7001"
aput-object v2, v1, v5
const/16 v2, 0xd
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v1, v6
aput-object v1, v0, v5
new-array v1, v8, [Ljava/lang/Object;
const-string/jumbo v2, "7002"
aput-object v2, v1, v5
sget-object v2, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;
aput-object v2, v1, v6
const/16 v2, 0x1e
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v1, v4
aput-object v1, v0, v6
new-array v1, v4, [Ljava/lang/Object;
const-string/jumbo v2, "7003"
aput-object v2, v1, v5
const/16 v2, 0xa
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v1, v6
aput-object v1, v0, v4
new-array v1, v4, [Ljava/lang/Object;
const-string/jumbo v2, "8001"
aput-object v2, v1, v5
const/16 v2, 0xe
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v1, v6
aput-object v1, v0, v8
const/4 v1, 0x4
new-array v2, v8, [Ljava/lang/Object;
const-string/jumbo v3, "8002"
aput-object v3, v2, v5
sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;
aput-object v3, v2, v6
const/16 v3, 0x14
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v4
aput-object v2, v0, v1
const/4 v1, 0x5
new-array v2, v8, [Ljava/lang/Object;
const-string/jumbo v3, "8003"
aput-object v3, v2, v5
sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;
aput-object v3, v2, v6
const/16 v3, 0x1e
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v4
aput-object v2, v0, v1
new-array v1, v8, [Ljava/lang/Object;
const-string/jumbo v2, "8004"
aput-object v2, v1, v5
sget-object v2, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;
aput-object v2, v1, v6
const/16 v2, 0x1e
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v1, v4
aput-object v1, v0, v7
const/4 v1, 0x7
new-array v2, v4, [Ljava/lang/Object;
const-string/jumbo v3, "8005"
aput-object v3, v2, v5
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v6
aput-object v2, v0, v1
const/16 v1, 0x8
new-array v2, v4, [Ljava/lang/Object;
const-string/jumbo v3, "8006"
aput-object v3, v2, v5
const/16 v3, 0x12
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v6
aput-object v2, v0, v1
const/16 v1, 0x9
new-array v2, v8, [Ljava/lang/Object;
const-string/jumbo v3, "8007"
aput-object v3, v2, v5
sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;
aput-object v3, v2, v6
const/16 v3, 0x1e
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v4
aput-object v2, v0, v1
const/16 v1, 0xa
new-array v2, v8, [Ljava/lang/Object;
const-string/jumbo v3, "8008"
aput-object v3, v2, v5
sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;
aput-object v3, v2, v6
const/16 v3, 0xc
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v4
aput-object v2, v0, v1
const/16 v1, 0xb
new-array v2, v4, [Ljava/lang/Object;
const-string/jumbo v3, "8018"
aput-object v3, v2, v5
const/16 v3, 0x12
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v6
aput-object v2, v0, v1
const/16 v1, 0xc
new-array v2, v8, [Ljava/lang/Object;
const-string/jumbo v3, "8020"
aput-object v3, v2, v5
sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;
aput-object v3, v2, v6
const/16 v3, 0x19
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v4
aput-object v2, v0, v1
const/16 v1, 0xd
new-array v2, v4, [Ljava/lang/Object;
const-string/jumbo v3, "8100"
aput-object v3, v2, v5
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v6
aput-object v2, v0, v1
const/16 v1, 0xe
new-array v2, v4, [Ljava/lang/Object;
const-string/jumbo v3, "8101"
aput-object v3, v2, v5
const/16 v3, 0xa
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v6
aput-object v2, v0, v1
const/16 v1, 0xf
new-array v2, v4, [Ljava/lang/Object;
const-string/jumbo v3, "8102"
aput-object v3, v2, v5
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v6
aput-object v2, v0, v1
const/16 v1, 0x10
new-array v2, v8, [Ljava/lang/Object;
const-string/jumbo v3, "8110"
aput-object v3, v2, v5
sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;
aput-object v3, v2, v6
const/16 v3, 0x46
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v4
aput-object v2, v0, v1
const/16 v1, 0x11
new-array v2, v8, [Ljava/lang/Object;
const-string/jumbo v3, "8200"
aput-object v3, v2, v5
sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;
aput-object v3, v2, v6
const/16 v3, 0x46
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v4
aput-object v2, v0, v1
sput-object v0, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static parseFieldsInGeneralPurpose(Ljava/lang/String;)Ljava/lang/String;
.registers 14
const/4 v12, 0x3
const/4 v11, 0x4
const/4 v8, 0x0
const/4 v10, 0x2
const/4 v9, 0x1
invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z
move-result v7
if-eqz v7, :cond_d
const/4 v7, 0x0
:goto_c
return-object v7
:cond_d
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v7
if-ge v7, v10, :cond_18
invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;
move-result-object v7
throw v7
:cond_18
invoke-virtual {p0, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v4
sget-object v0, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->TWO_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;
array-length v6, v0
const/4 v5, 0x0
:goto_20
if-ge v5, v6, :cond_4f
aget-object v1, v0, v5
aget-object v7, v1, v8
invoke-virtual {v7, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_4c
aget-object v7, v1, v9
sget-object v8, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;
if-ne v7, v8, :cond_3f
aget-object v7, v1, v10
check-cast v7, Ljava/lang/Integer;
invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I
move-result v7
invoke-static {v10, v7, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processVariableAI(IILjava/lang/String;)Ljava/lang/String;
move-result-object v7
goto :goto_c
:cond_3f
aget-object v7, v1, v9
check-cast v7, Ljava/lang/Integer;
invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I
move-result v7
invoke-static {v10, v7, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processFixedAI(IILjava/lang/String;)Ljava/lang/String;
move-result-object v7
goto :goto_c
:cond_4c
add-int/lit8 v5, v5, 0x1
goto :goto_20
:cond_4f
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v7
if-ge v7, v12, :cond_5a
invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;
move-result-object v7
throw v7
:cond_5a
invoke-virtual {p0, v8, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v3
sget-object v0, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;
array-length v6, v0
const/4 v5, 0x0
:goto_62
if-ge v5, v6, :cond_92
aget-object v1, v0, v5
aget-object v7, v1, v8
invoke-virtual {v7, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_8f
aget-object v7, v1, v9
sget-object v8, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;
if-ne v7, v8, :cond_81
aget-object v7, v1, v10
check-cast v7, Ljava/lang/Integer;
invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I
move-result v7
invoke-static {v12, v7, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processVariableAI(IILjava/lang/String;)Ljava/lang/String;
move-result-object v7
goto :goto_c
:cond_81
aget-object v7, v1, v9
check-cast v7, Ljava/lang/Integer;
invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I
move-result v7
invoke-static {v12, v7, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processFixedAI(IILjava/lang/String;)Ljava/lang/String;
move-result-object v7
goto/16 :goto_c
:cond_8f
add-int/lit8 v5, v5, 0x1
goto :goto_62
:cond_92
sget-object v0, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;
array-length v6, v0
const/4 v5, 0x0
:goto_96
if-ge v5, v6, :cond_c7
aget-object v1, v0, v5
aget-object v7, v1, v8
invoke-virtual {v7, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_c4
aget-object v7, v1, v9
sget-object v8, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;
if-ne v7, v8, :cond_b6
aget-object v7, v1, v10
check-cast v7, Ljava/lang/Integer;
invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I
move-result v7
invoke-static {v11, v7, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processVariableAI(IILjava/lang/String;)Ljava/lang/String;
move-result-object v7
goto/16 :goto_c
:cond_b6
aget-object v7, v1, v9
check-cast v7, Ljava/lang/Integer;
invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I
move-result v7
invoke-static {v11, v7, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processFixedAI(IILjava/lang/String;)Ljava/lang/String;
move-result-object v7
goto/16 :goto_c
:cond_c4
add-int/lit8 v5, v5, 0x1
goto :goto_96
:cond_c7
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v7
if-ge v7, v11, :cond_d2
invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;
move-result-object v7
throw v7
:cond_d2
invoke-virtual {p0, v8, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v2
sget-object v0, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;
array-length v6, v0
const/4 v5, 0x0
:goto_da
if-ge v5, v6, :cond_10b
aget-object v1, v0, v5
aget-object v7, v1, v8
invoke-virtual {v7, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_108
aget-object v7, v1, v9
sget-object v8, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;
if-ne v7, v8, :cond_fa
aget-object v7, v1, v10
check-cast v7, Ljava/lang/Integer;
invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I
move-result v7
invoke-static {v11, v7, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processVariableAI(IILjava/lang/String;)Ljava/lang/String;
move-result-object v7
goto/16 :goto_c
:cond_fa
aget-object v7, v1, v9
check-cast v7, Ljava/lang/Integer;
invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I
move-result v7
invoke-static {v11, v7, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processFixedAI(IILjava/lang/String;)Ljava/lang/String;
move-result-object v7
goto/16 :goto_c
:cond_108
add-int/lit8 v5, v5, 0x1
goto :goto_da
:cond_10b
invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;
move-result-object v7
throw v7
.end method
.method private static processFixedAI(IILjava/lang/String;)Ljava/lang/String;
.registers 10
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v5
if-ge v5, p0, :cond_b
invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;
move-result-object v5
throw v5
:cond_b
const/4 v5, 0x0
invoke-virtual {p2, v5, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v5
add-int v6, p0, p1
if-ge v5, v6, :cond_1d
invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;
move-result-object v5
throw v5
:cond_1d
add-int v5, p0, p1
invoke-virtual {p2, p0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v1
add-int v5, p0, p1
invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v3
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const/16 v6, 0x28
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const/16 v6, 0x29
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->parseFieldsInGeneralPurpose(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
if-nez v2, :cond_4d
:goto_4c
return-object v4
:cond_4d
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
goto :goto_4c
.end method
.method private static processVariableAI(IILjava/lang/String;)Ljava/lang/String;
.registers 11
const/4 v6, 0x0
invoke-virtual {p2, v6, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v6
add-int v7, p0, p1
if-ge v6, v7, :cond_3d
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v2
:goto_11
invoke-virtual {p2, p0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v1
invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v4
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const/16 v7, 0x28
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const/16 v7, 0x29
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->parseFieldsInGeneralPurpose(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
if-nez v3, :cond_40
:goto_3c
return-object v5
:cond_3d
add-int v2, p0, p1
goto :goto_11
:cond_40
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
goto :goto_3c
.end method
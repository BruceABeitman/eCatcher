.class public Lboston/Bus/Map/test/TestSerialization;
.super Ljunit/framework/TestCase;
.source "TestSerialization.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V
return-void
.end method
.method private assertValid(Lboston/Bus/Map/util/Box;)V
.registers 11
const/4 v8, 0x0
const/4 v7, 0x7
new-instance v6, Ljava/util/HashMap;
invoke-direct {v6}, Ljava/util/HashMap;-><init>()V
invoke-virtual {p1}, Lboston/Bus/Map/util/Box;->getBlob()[B
move-result-object v0
new-instance v3, Lboston/Bus/Map/util/Box;
invoke-direct {v3, v0, v7, v6}, Lboston/Bus/Map/util/Box;-><init>([BILjava/util/HashMap;)V
new-instance v5, Lboston/Bus/Map/data/RouteConfig;
invoke-direct {v5, v3, v8}, Lboston/Bus/Map/data/RouteConfig;-><init>(Lboston/Bus/Map/util/Box;Landroid/graphics/drawable/Drawable;)V
new-instance v4, Lboston/Bus/Map/util/Box;
invoke-direct {v4, v8, v7, v6}, Lboston/Bus/Map/util/Box;-><init>([BILjava/util/HashMap;)V
invoke-virtual {v5, v4}, Lboston/Bus/Map/data/RouteConfig;->serialize(Lboston/Bus/Map/util/Box;)V
invoke-virtual {v4}, Lboston/Bus/Map/util/Box;->getBlob()[B
move-result-object v1
array-length v7, v0
array-length v8, v1
invoke-static {v7, v8}, Lboston/Bus/Map/test/TestSerialization;->assertEquals(II)V
const/4 v2, 0x0
:goto_27
array-length v7, v0
if-ge v2, v7, :cond_34
aget-byte v7, v0, v2
aget-byte v8, v1, v2
invoke-static {v7, v8}, Lboston/Bus/Map/test/TestSerialization;->assertEquals(BB)V
add-int/lit8 v2, v2, 0x1
goto :goto_27
:cond_34
return-void
.end method
.method private assertValidPath(Lboston/Bus/Map/util/Box;)V
.registers 11
const/4 v8, 0x7
new-instance v6, Ljava/util/HashMap;
invoke-direct {v6}, Ljava/util/HashMap;-><init>()V
invoke-virtual {p1}, Lboston/Bus/Map/util/Box;->getBlob()[B
move-result-object v0
new-instance v3, Lboston/Bus/Map/util/Box;
invoke-direct {v3, v0, v8, v6}, Lboston/Bus/Map/util/Box;-><init>([BILjava/util/HashMap;)V
new-instance v5, Lboston/Bus/Map/data/Path;
invoke-direct {v5, v3}, Lboston/Bus/Map/data/Path;-><init>(Lboston/Bus/Map/util/Box;)V
new-instance v4, Lboston/Bus/Map/util/Box;
const/4 v7, 0x0
invoke-direct {v4, v7, v8, v6}, Lboston/Bus/Map/util/Box;-><init>([BILjava/util/HashMap;)V
invoke-virtual {v5, v4}, Lboston/Bus/Map/data/Path;->serialize(Lboston/Bus/Map/util/Box;)V
invoke-virtual {v4}, Lboston/Bus/Map/util/Box;->getBlob()[B
move-result-object v1
array-length v7, v0
array-length v8, v1
invoke-static {v7, v8}, Lboston/Bus/Map/test/TestSerialization;->assertEquals(II)V
const/4 v2, 0x0
:goto_27
array-length v7, v0
if-ge v2, v7, :cond_34
aget-byte v7, v0, v2
aget-byte v8, v1, v2
invoke-static {v7, v8}, Lboston/Bus/Map/test/TestSerialization;->assertEquals(BB)V
add-int/lit8 v2, v2, 0x1
goto :goto_27
:cond_34
return-void
.end method
.method private assertValidStopLocation(Lboston/Bus/Map/util/Box;)V
.registers 11
const/4 v8, 0x0
const/4 v7, 0x7
new-instance v6, Ljava/util/HashMap;
invoke-direct {v6}, Ljava/util/HashMap;-><init>()V
invoke-virtual {p1}, Lboston/Bus/Map/util/Box;->getBlob()[B
move-result-object v0
new-instance v3, Lboston/Bus/Map/util/Box;
invoke-direct {v3, v0, v7, v6}, Lboston/Bus/Map/util/Box;-><init>([BILjava/util/HashMap;)V
new-instance v5, Lboston/Bus/Map/data/StopLocation;
invoke-direct {v5, v3, v8}, Lboston/Bus/Map/data/StopLocation;-><init>(Lboston/Bus/Map/util/Box;Landroid/graphics/drawable/Drawable;)V
new-instance v4, Lboston/Bus/Map/util/Box;
invoke-direct {v4, v8, v7, v6}, Lboston/Bus/Map/util/Box;-><init>([BILjava/util/HashMap;)V
invoke-virtual {v5, v4}, Lboston/Bus/Map/data/StopLocation;->serialize(Lboston/Bus/Map/util/Box;)V
invoke-virtual {v4}, Lboston/Bus/Map/util/Box;->getBlob()[B
move-result-object v1
array-length v7, v0
array-length v8, v1
invoke-static {v7, v8}, Lboston/Bus/Map/test/TestSerialization;->assertEquals(II)V
const/4 v2, 0x0
:goto_27
array-length v7, v0
if-ge v2, v7, :cond_34
aget-byte v7, v0, v2
aget-byte v8, v1, v2
invoke-static {v7, v8}, Lboston/Bus/Map/test/TestSerialization;->assertEquals(BB)V
add-int/lit8 v2, v2, 0x1
goto :goto_27
:cond_34
return-void
.end method
.method public testBasic()V
.registers 10
const/4 v3, 0x0
const-string v4, "5"
new-instance v8, Ljava/util/HashMap;
invoke-direct {v8}, Ljava/util/HashMap;-><init>()V
new-instance v7, Lboston/Bus/Map/data/RouteConfig;
const-string v0, "x"
invoke-direct {v7, v0}, Lboston/Bus/Map/data/RouteConfig;-><init>(Ljava/lang/String;)V
const/4 v0, 0x1
const/high16 v1, 0x4040
const/high16 v2, 0x4080
invoke-virtual {v7, v0, v1, v2}, Lboston/Bus/Map/data/RouteConfig;->addPath(IFF)V
const-string v0, "5"
new-instance v0, Lboston/Bus/Map/data/StopLocation;
const/high16 v1, 0x4230
const/high16 v2, 0x425c
const-string v5, "5"
const-string v5, "xy"
invoke-direct/range {v0 .. v5}, Lboston/Bus/Map/data/StopLocation;-><init>(FFLandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v7, v4, v0}, Lboston/Bus/Map/data/RouteConfig;->addStop(Ljava/lang/String;Lboston/Bus/Map/data/StopLocation;)V
const-string v0, "XYZSD"
const-string v1, "akosod"
const-string v2, "asodkosd"
invoke-virtual {v7, v0, v1, v2}, Lboston/Bus/Map/data/RouteConfig;->addDirection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
new-instance v6, Lboston/Bus/Map/util/Box;
const/4 v0, 0x7
invoke-direct {v6, v3, v0, v8}, Lboston/Bus/Map/util/Box;-><init>([BILjava/util/HashMap;)V
invoke-virtual {v7, v6}, Lboston/Bus/Map/data/RouteConfig;->serialize(Lboston/Bus/Map/util/Box;)V
invoke-direct {p0, v6}, Lboston/Bus/Map/test/TestSerialization;->assertValid(Lboston/Bus/Map/util/Box;)V
return-void
.end method
.method public testBasic2()V
.registers 10
const/4 v3, 0x0
const-string v4, "5"
new-instance v8, Ljava/util/HashMap;
invoke-direct {v8}, Ljava/util/HashMap;-><init>()V
new-instance v7, Lboston/Bus/Map/data/RouteConfig;
const-string v0, "x"
invoke-direct {v7, v0}, Lboston/Bus/Map/data/RouteConfig;-><init>(Ljava/lang/String;)V
const/4 v0, 0x1
const/high16 v1, 0x4040
const/high16 v2, 0x4080
invoke-virtual {v7, v0, v1, v2}, Lboston/Bus/Map/data/RouteConfig;->addPath(IFF)V
const-string v0, "5"
new-instance v0, Lboston/Bus/Map/data/StopLocation;
const/high16 v1, 0x4230
const/high16 v2, 0x425c
const-string v5, "5"
const-string v5, "xy"
invoke-direct/range {v0 .. v5}, Lboston/Bus/Map/data/StopLocation;-><init>(FFLandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v7, v4, v0}, Lboston/Bus/Map/data/RouteConfig;->addStop(Ljava/lang/String;Lboston/Bus/Map/data/StopLocation;)V
new-instance v6, Lboston/Bus/Map/util/Box;
const/4 v0, 0x7
invoke-direct {v6, v3, v0, v8}, Lboston/Bus/Map/util/Box;-><init>([BILjava/util/HashMap;)V
invoke-virtual {v7, v6}, Lboston/Bus/Map/data/RouteConfig;->serialize(Lboston/Bus/Map/util/Box;)V
invoke-direct {p0, v6}, Lboston/Bus/Map/test/TestSerialization;->assertValid(Lboston/Bus/Map/util/Box;)V
return-void
.end method
.method public testDouble()V
.registers 11
const/4 v9, 0x7
new-instance v3, Ljava/util/HashMap;
invoke-direct {v3}, Ljava/util/HashMap;-><init>()V
const-wide v6, -0x3f3f7c547ae147aeL
new-instance v2, Lboston/Bus/Map/util/Box;
const/4 v8, 0x0
invoke-direct {v2, v8, v9, v3}, Lboston/Bus/Map/util/Box;-><init>([BILjava/util/HashMap;)V
invoke-virtual {v2, v6, v7}, Lboston/Bus/Map/util/Box;->writeDouble(D)V
invoke-virtual {v2}, Lboston/Bus/Map/util/Box;->getBlob()[B
move-result-object v0
new-instance v1, Lboston/Bus/Map/util/Box;
invoke-direct {v1, v0, v9, v3}, Lboston/Bus/Map/util/Box;-><init>([BILjava/util/HashMap;)V
invoke-virtual {v1}, Lboston/Bus/Map/util/Box;->readDouble()D
move-result-wide v4
invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v8
invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v9
invoke-static {v8, v9}, Lboston/Bus/Map/test/TestSerialization;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V
return-void
.end method
.method public testFloat()V
.registers 9
const/4 v7, 0x7
new-instance v3, Ljava/util/HashMap;
invoke-direct {v3}, Ljava/util/HashMap;-><init>()V
const v5, -0x39fbe07b
new-instance v2, Lboston/Bus/Map/util/Box;
const/4 v6, 0x0
invoke-direct {v2, v6, v7, v3}, Lboston/Bus/Map/util/Box;-><init>([BILjava/util/HashMap;)V
invoke-virtual {v2, v5}, Lboston/Bus/Map/util/Box;->writeFloat(F)V
invoke-virtual {v2}, Lboston/Bus/Map/util/Box;->getBlob()[B
move-result-object v0
new-instance v1, Lboston/Bus/Map/util/Box;
invoke-direct {v1, v0, v7, v3}, Lboston/Bus/Map/util/Box;-><init>([BILjava/util/HashMap;)V
invoke-virtual {v1}, Lboston/Bus/Map/util/Box;->readFloat()F
move-result v4
invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v6
invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v7
invoke-static {v6, v7}, Lboston/Bus/Map/test/TestSerialization;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V
return-void
.end method
.method public testInt()V
.registers 9
const/4 v7, 0x7
new-instance v3, Ljava/util/HashMap;
invoke-direct {v3}, Ljava/util/HashMap;-><init>()V
const/16 v5, -0x2107
new-instance v2, Lboston/Bus/Map/util/Box;
const/4 v6, 0x0
invoke-direct {v2, v6, v7, v3}, Lboston/Bus/Map/util/Box;-><init>([BILjava/util/HashMap;)V
invoke-virtual {v2, v5}, Lboston/Bus/Map/util/Box;->writeInt(I)V
invoke-virtual {v2}, Lboston/Bus/Map/util/Box;->getBlob()[B
move-result-object v0
new-instance v1, Lboston/Bus/Map/util/Box;
invoke-direct {v1, v0, v7, v3}, Lboston/Bus/Map/util/Box;-><init>([BILjava/util/HashMap;)V
invoke-virtual {v1}, Lboston/Bus/Map/util/Box;->readInt()I
move-result v4
invoke-static {v5, v4}, Lboston/Bus/Map/test/TestSerialization;->assertEquals(II)V
return-void
.end method
.method public testLong()V
.registers 11
const/4 v9, 0x7
new-instance v3, Ljava/util/HashMap;
invoke-direct {v3}, Ljava/util/HashMap;-><init>()V
const-wide v6, -0x3f3f7c547ae147aeL
new-instance v2, Lboston/Bus/Map/util/Box;
const/4 v8, 0x0
invoke-direct {v2, v8, v9, v3}, Lboston/Bus/Map/util/Box;-><init>([BILjava/util/HashMap;)V
invoke-virtual {v2, v6, v7}, Lboston/Bus/Map/util/Box;->writeLong(J)V
invoke-virtual {v2}, Lboston/Bus/Map/util/Box;->getBlob()[B
move-result-object v0
new-instance v1, Lboston/Bus/Map/util/Box;
invoke-direct {v1, v0, v9, v3}, Lboston/Bus/Map/util/Box;-><init>([BILjava/util/HashMap;)V
invoke-virtual {v1}, Lboston/Bus/Map/util/Box;->readLong()J
move-result-wide v4
invoke-static {v6, v7, v4, v5}, Lboston/Bus/Map/test/TestSerialization;->assertEquals(JJ)V
return-void
.end method
.method public testPath()V
.registers 6
new-instance v1, Ljava/util/HashMap;
invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
new-instance v2, Lboston/Bus/Map/data/Path;
const/4 v3, 0x3
invoke-direct {v2, v3}, Lboston/Bus/Map/data/Path;-><init>(I)V
new-instance v0, Lboston/Bus/Map/util/Box;
const/4 v3, 0x0
const/4 v4, 0x7
invoke-direct {v0, v3, v4, v1}, Lboston/Bus/Map/util/Box;-><init>([BILjava/util/HashMap;)V
invoke-virtual {v2, v0}, Lboston/Bus/Map/data/Path;->serialize(Lboston/Bus/Map/util/Box;)V
invoke-direct {p0, v0}, Lboston/Bus/Map/test/TestSerialization;->assertValidPath(Lboston/Bus/Map/util/Box;)V
return-void
.end method
.method public testStopLocation()V
.registers 9
const/4 v3, 0x0
new-instance v7, Ljava/util/HashMap;
invoke-direct {v7}, Ljava/util/HashMap;-><init>()V
new-instance v0, Lboston/Bus/Map/data/StopLocation;
const v1, 0x42326666
const v2, -0x3dc9999a
const-string v4, "3"
const-string v5, "stop"
invoke-direct/range {v0 .. v5}, Lboston/Bus/Map/data/StopLocation;-><init>(FFLandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V
new-instance v6, Lboston/Bus/Map/util/Box;
const/4 v1, 0x7
invoke-direct {v6, v3, v1, v7}, Lboston/Bus/Map/util/Box;-><init>([BILjava/util/HashMap;)V
invoke-virtual {v0, v6}, Lboston/Bus/Map/data/StopLocation;->serialize(Lboston/Bus/Map/util/Box;)V
invoke-direct {p0, v6}, Lboston/Bus/Map/test/TestSerialization;->assertValidStopLocation(Lboston/Bus/Map/util/Box;)V
return-void
.end method
.method public testString()V
.registers 9
const/4 v7, 0x7
new-instance v3, Ljava/util/HashMap;
invoke-direct {v3}, Ljava/util/HashMap;-><init>()V
const/4 v5, 0x0
new-instance v2, Lboston/Bus/Map/util/Box;
const/4 v6, 0x0
invoke-direct {v2, v6, v7, v3}, Lboston/Bus/Map/util/Box;-><init>([BILjava/util/HashMap;)V
:try_start_d
invoke-virtual {v2, v5}, Lboston/Bus/Map/util/Box;->writeString(Ljava/lang/String;)V
const/4 v6, 0x0
invoke-static {v6}, Lboston/Bus/Map/test/TestSerialization;->assertTrue(Z)V
invoke-virtual {v2}, Lboston/Bus/Map/util/Box;->getBlob()[B
move-result-object v0
new-instance v1, Lboston/Bus/Map/util/Box;
const/4 v6, 0x7
invoke-direct {v1, v0, v6, v3}, Lboston/Bus/Map/util/Box;-><init>([BILjava/util/HashMap;)V
invoke-virtual {v1}, Lboston/Bus/Map/util/Box;->readString()Ljava/lang/String;
move-result-object v4
invoke-static {v5, v4}, Lboston/Bus/Map/test/TestSerialization;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V
:try_end_25
.catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_25} :catch_26
:goto_25
return-void
:catch_26
move-exception v6
goto :goto_25
.end method
.method public testString2()V
.registers 9
const/4 v7, 0x7
new-instance v3, Ljava/util/HashMap;
invoke-direct {v3}, Ljava/util/HashMap;-><init>()V
const-string v5, "A quick brown fox"
new-instance v2, Lboston/Bus/Map/util/Box;
const/4 v6, 0x0
invoke-direct {v2, v6, v7, v3}, Lboston/Bus/Map/util/Box;-><init>([BILjava/util/HashMap;)V
invoke-virtual {v2, v5}, Lboston/Bus/Map/util/Box;->writeString(Ljava/lang/String;)V
invoke-virtual {v2}, Lboston/Bus/Map/util/Box;->getBlob()[B
move-result-object v0
new-instance v1, Lboston/Bus/Map/util/Box;
invoke-direct {v1, v0, v7, v3}, Lboston/Bus/Map/util/Box;-><init>([BILjava/util/HashMap;)V
invoke-virtual {v1}, Lboston/Bus/Map/util/Box;->readString()Ljava/lang/String;
move-result-object v4
invoke-static {v5, v4}, Lboston/Bus/Map/test/TestSerialization;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public testStringMap()V
.registers 16
new-instance v10, Ljava/util/HashMap;
invoke-direct {v10}, Ljava/util/HashMap;-><init>()V
new-instance v7, Ljava/util/HashMap;
invoke-direct {v7}, Ljava/util/HashMap;-><init>()V
const-string v13, "Apple"
const-string v14, "cranberry"
invoke-virtual {v7, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v13, "avocado"
const-string v14, "jellyfish"
invoke-virtual {v7, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v13, "sea cucumber"
const/4 v14, 0x0
invoke-virtual {v7, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
new-instance v9, Lboston/Bus/Map/util/Box;
const/4 v13, 0x0
const/4 v14, 0x7
invoke-direct {v9, v13, v14, v10}, Lboston/Bus/Map/util/Box;-><init>([BILjava/util/HashMap;)V
:try_start_25
invoke-virtual {v9, v7}, Lboston/Bus/Map/util/Box;->writeStringMap(Ljava/util/Map;)V
const/4 v13, 0x0
invoke-static {v13}, Lboston/Bus/Map/test/TestSerialization;->assertTrue(Z)V
new-instance v8, Ljava/util/HashMap;
invoke-direct {v8}, Ljava/util/HashMap;-><init>()V
new-instance v0, Lboston/Bus/Map/util/Box;
invoke-virtual {v9}, Lboston/Bus/Map/util/Box;->getBlob()[B
move-result-object v13
const/4 v14, 0x7
invoke-direct {v0, v13, v14, v10}, Lboston/Bus/Map/util/Box;-><init>([BILjava/util/HashMap;)V
invoke-virtual {v0, v8}, Lboston/Bus/Map/util/Box;->readStringMap(Ljava/util/Map;)V
invoke-virtual {v8}, Ljava/util/HashMap;->size()I
move-result v13
invoke-virtual {v7}, Ljava/util/HashMap;->size()I
move-result v14
invoke-static {v13, v14}, Lboston/Bus/Map/test/TestSerialization;->assertEquals(II)V
new-instance v5, Ljava/util/TreeSet;
invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;
move-result-object v13
invoke-direct {v5, v13}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V
new-instance v6, Ljava/util/TreeSet;
invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;
move-result-object v13
invoke-direct {v6, v13}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V
invoke-interface {v5}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;
move-result-object v1
invoke-interface {v6}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_63
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v13
if-eqz v13, :cond_89
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/lang/String;
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Ljava/lang/String;
invoke-static {v3, v4}, Lboston/Bus/Map/test/TestSerialization;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v11
check-cast v11, Ljava/lang/String;
invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v12
check-cast v12, Ljava/lang/String;
invoke-static {v11, v12}, Lboston/Bus/Map/test/TestSerialization;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V
:try_end_87
.catch Ljava/lang/NullPointerException; {:try_start_25 .. :try_end_87} :catch_88
goto :goto_63
:catch_88
move-exception v13
:cond_89
return-void
.end method
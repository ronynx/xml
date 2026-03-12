# XML Technologies Guide (XML, XSD, DTD, XSLT, XPath, XQuery)

This guide explains how to run and test **XML-related technologies** using:

* XML Copy Editor (Desktop software)
* FreeFormatter (Online tools)

Technologies covered:

* XML
* DTD
* XSD
* XSLT
* XPath
* XQuery

---

# 1. Running XML with DTD (Using XML Copy Editor)

## Step 1: Create XML File

Create a file named `note.xml`.

```xml
<?xml version="1.0"?>
<!DOCTYPE note SYSTEM "note.dtd">

<note>
   <to>Alice</to>
   <from>Bob</from>
   <message>Hello</message>
</note>
```

## Step 2: Create DTD File

Create a file named `note.dtd`.

```dtd
<!ELEMENT note (to,from,message)>
<!ELEMENT to (#PCDATA)>
<!ELEMENT from (#PCDATA)>
<!ELEMENT message (#PCDATA)>
```

## Step 3: Validate

1. Open `note.xml` in **XML Copy Editor**
2. Click:

```
XML → Validate
```

If correct, the message **"Document is valid"** will appear.

---

# 2. Validate XML with XSD (XML Schema)

## Step 1: Create XML File

Create `book.xml`.

```xml
<?xml version="1.0"?>

<book xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xsi:noNamespaceSchemaLocation="book.xsd">

<title>XML Guide</title>
<author>John</author>

</book>
```

## Step 2: Create XSD File

Create `book.xsd`.

```xml
<?xml version="1.0"?>

<xsd:schema xmlns:xsd="http://www.w3.org/2001/XMLSchema">

<xsd:element name="book">
  <xsd:complexType>
    <xsd:sequence>

      <xsd:element name="title" type="xsd:string"/>
      <xsd:element name="author" type="xsd:string"/>

    </xsd:sequence>
  </xsd:complexType>
</xsd:element>

</xsd:schema>
```

## Step 3: Validate

Open `book.xml` in **XML Copy Editor** and click:

```
XML → Validate
```

---

# 3. Run XSLT Transformation

## Step 1: Create XML File

`students.xml`

```xml
<students>

   <student>
      <name>Ram</name>
      <age>20</age>
   </student>

</students>
```

## Step 2: Create XSL File

`students.xsl`

```xml
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="/">

<html>
<body>

<h2>Student List</h2>

<xsl:for-each select="students/student">

<p>
<xsl:value-of select="name"/> -
<xsl:value-of select="age"/>
</p>

</xsl:for-each>

</body>
</html>

</xsl:template>

</xsl:stylesheet>
```

## Step 3: Run Transformation

In **XML Copy Editor**:

```
XSLT → Transform
```

Select the `.xsl` file.

The output HTML will be generated.

---

# 4. Run XPath Query

## Example XML

```xml
<students>

   <student>
      <name>Ram</name>
      <age>20</age>
   </student>

   <student>
      <name>Sita</name>
      <age>22</age>
   </student>

</students>
```

## XPath Examples

| XPath Query              | Description            |
| ------------------------ | ---------------------- |
| `/students/student/name` | Select all names       |
| `//student[age>20]/name` | Students with age > 20 |
| `count(//student)`       | Count students         |

## Steps

1. Open XML file in **XML Copy Editor**
2. Click

```
XML → Evaluate XPath
```

3. Enter XPath query
4. Click **Evaluate**

---

# 5. Validate XML Online (FreeFormatter)

Steps:

1. Open
   https://www.freeformatter.com/xml-validator-xsd.html

2. Paste **XML code**

3. Paste **XSD code** (optional)

4. Click

```
Validate XML
```

The tool will show **validation results or errors**.

---

# 6. Run XPath Online

Steps:

1. Open
   https://www.freeformatter.com/xpath-tester.html

2. Paste XML data

3. Enter XPath query

Example:

```
/students/student/name
```

4. Click **Test XPath**

---


# Summary

| Technology          | XML Copy Editor | FreeFormatter |
| ------------------- | --------------- | ------------- |
| XML Validation      | Yes             | Yes           |
| DTD Validation      | Yes             | Yes           |
| XSD Validation      | Yes             | Yes           |
| XSLT Transformation | Yes             | No            |
| XPath               | Yes             | Yes           |
| XQuery              | No              | Yes           |

---

# Folder Structure Example

```
xml-project/

note.xml
note.dtd

book.xml
book.xsd

students.xml
students.xsl
```

---

# Requirements

* XML Copy Editor installed
* Internet connection (for FreeFormatter tools)

---

# License

This guide is for **educational and learning purposes**.

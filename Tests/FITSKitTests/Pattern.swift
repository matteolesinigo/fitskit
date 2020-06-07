//
//  File.swift
//  
//
//  Created by May on 07.06.20.
//

import Foundation

public let PATTERN =
"""
iVBORw0KGgoAAAANSUhEUgAABAAAAAMACAIAAAA12IJaAAAAAXNSR0IArs4c6QAAAMZlWElmTU0AKgAAAAgABgESAAMAAAABAAEAAAEaAAUAAAABAAAAVgEbAAUAAAABAAAAXgEoAAMAAAABAAIAAAExAAIAAAAVAAAAZodpAAQAAAABAAAAfAAAAAAAAABIAAAAAQAAAEgAAAABUGl4ZWxtYXRvciBQcm8gMS42LjMAAAAEkAQAAgAAABQAAACyoAEAAwAAAAEAAQAAoAIABAAAAAEAAAQAoAMABAAAAAEAAAMAAAAAADIwMjA6MDU6MjIgMjI6MDU6NDcAE60n3AAAAAlwSFlzAAALEwAACxMBAJqcGAAAA6lpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IlhNUCBDb3JlIDUuNC4wIj4KICAgPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4KICAgICAgPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIKICAgICAgICAgICAgeG1sbnM6dGlmZj0iaHR0cDovL25zLmFkb2JlLmNvbS90aWZmLzEuMC8iCiAgICAgICAgICAgIHhtbG5zOmV4aWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20vZXhpZi8xLjAvIgogICAgICAgICAgICB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iPgogICAgICAgICA8dGlmZjpSZXNvbHV0aW9uVW5pdD4yPC90aWZmOlJlc29sdXRpb25Vbml0PgogICAgICAgICA8dGlmZjpYUmVzb2x1dGlvbj43MjAwMDAvMTAwMDA8L3RpZmY6WFJlc29sdXRpb24+CiAgICAgICAgIDx0aWZmOk9yaWVudGF0aW9uPjE8L3RpZmY6T3JpZW50YXRpb24+CiAgICAgICAgIDx0aWZmOllSZXNvbHV0aW9uPjcyMDAwMC8xMDAwMDwvdGlmZjpZUmVzb2x1dGlvbj4KICAgICAgICAgPGV4aWY6UGl4ZWxZRGltZW5zaW9uPjc2ODwvZXhpZjpQaXhlbFlEaW1lbnNpb24+CiAgICAgICAgIDxleGlmOlBpeGVsWERpbWVuc2lvbj4xMDI0PC9leGlmOlBpeGVsWERpbWVuc2lvbj4KICAgICAgICAgPHhtcDpDcmVhdG9yVG9vbD5QaXhlbG1hdG9yIFBybyAxLjYuMzwveG1wOkNyZWF0b3JUb29sPgogICAgICAgICA8eG1wOkNyZWF0ZURhdGU+MjAyMC0wNS0yMlQyMjowNTo0N1o8L3htcDpDcmVhdGVEYXRlPgogICAgICAgICA8eG1wOk1ldGFkYXRhRGF0ZT4yMDIwLTA1LTIyVDIyOjA4OjUzWjwveG1wOk1ldGFkYXRhRGF0ZT4KICAgICAgPC9yZGY6RGVzY3JpcHRpb24+CiAgIDwvcmRmOlJERj4KPC94OnhtcG1ldGE+ConPNlcAAEAASURBVHgB7d3Bi9XX9QDwawStIBISCUETGSRECYTgqhCo0GDoKllYoTtB3CSUumnzV5i0NC7aTQi4tlnoopSmKaSQbQhCGiHIYIyEYEOwgiiIv8v4qzHjOM6bO++9e+75PIQ6b97c7zmfc096j+/Ne+WPf/zj888/X9wIECBAgAABAgQIEBhaoB776+G/OP0PXWXJESBAgAABAgQIEPhBwOH/Bwt/I0CAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAIFpCmya5uI9rr1z584DBw7sW7rt379/9+7d9Z7t27dv2bJl8+bNPUYsJgIECBAgQIAAgWaB27dv37p16/r161evXr18+fKF/90+/fTTek/z8pEWSDEAbNu27dChQ68s3V588cVNm1JkHWkbipUAAQIECBAgMCeBO3funD9//qOl24cffnjjxo05BTK7y458FK4H/YMHDx49evTIkSM7duyYHaorESBAgAABAgQIBBS4du3amTNnTp8+/fHHH9fBIGAGawp5zAFg69atx44de+utt/bu3bsmBg8iQIAAAQIECBAg8D+Bixcvnjx58v3337958+b/7hvnf0cbAOqrfd54443f/e53u3btGqdKMiFAgAABAgQIEJi5wJUrV95+++0///nPg70uaKgB4LXXXnv33XcXFhZmvj1ckAABAgQIECBAYEyBxcXFEydOnDt3bpj0BhkA9uzZc+rUqddff32YwkiEAAECBAgQIECgH4GzZ8/+5je/uXTpUj8hrTuSEQaAw4cPv/fee48//vi6FfwgAQIECBAgQIAAgdUFvv/+++PHj3/wwQerP6z/78Z+5/v65v1/+MMf3nnnnZ/85Cf9W4uQAAECBAgQIEAgrkA9cP7qV7968skn//GPf9RPFYibSOBnAJ544on6YqyXX345rr7ICRAgQIAAAQIEwgl88skn9VdPv/vuu3CR3w046gDwzDPP/O1vf3vhhReCugubAAECBAgQIEAgrsDnn3/+i1/8on6icMQUQg4A+/bt+/vf//7ss89GFBczAQIECBAgQIDAAAJfffXVq6++euHChXC5xBsA6r/916ddnP7DbTUBEyBAgAABAgQGE6gzQH05erjnAR6LVYb6uv/6yh+n/1hVEy0BAgQIECBAYEiBeiitR9N6QI2VXaQBoL7nT/2tX6/7j7XDREuAAAECBAgQGFigHk3rAbUeUwPlGOltQOs7fh45ciQQrlAJECBAgAABAgSGF6jPA9QPpPrrX/8aJdMwvwNQP+3rL3/5SxRWcRIgQIAAAQIECKQS+OUvfxnlM8JiDAB79uz57LPPfNZvqi6SLAECBAgQIEAgkED9nOCXXnrp0qVL/ccc43cATp065fTf/2YSIQECBAgQIEAgrUA9rNYja4j0AzwDUD9o7ezZsyE0BUmAAAECBAgQIJBZ4PXXX6+/E9y5QO8DwLZt2+oHrS0sLHTuKDwCBAgQIECAAAECi4uL9X2Bbty40TNF7y8BevPNN53+e95AYiNAgAABAgQIELgnUA+ub7zxxr0v+/xL188AbN269eLFi7t27erTTlQECBAgQIAAAQIElglcuXJl7969N2/eXHZ/P192/QzAsWPHnP772SsiIUCAAAECBAgQeKRAPb7WQ+wjHzbHB/T7DMCmTZu+/PLLOj/NUcelCRAgQIAAAQIECEwqUF/D8txzz925c2fSH5zN4/t9BuDgwYNO/7PZBK5CgAABAgQIECCwgQL1EFuPshu44MYu1e8AcPTo0Y1N1WoECBAgQIAAAQIEZiPQ81G205cA1Xf//Oabb3bs2DGbCrkKAQIECBAgQIAAgQ0UuHbt2tNPP93n+4F2+gzAoUOHnP43cAtaigABAgQIECBAYJYC9ShbD7SzvOLar9XpAPDKK6+sPQePJECAAAECBAgQINCbQLcHWgNAb1tFPAQIECBAgAABAiMIdDsA9Pg7ADt37vz222/r24COUHk5ECBAgAABAgQIpBSobwP61FNPXb16tbfse3wG4MCBA07/vW0U8RAgQIAAAQIECEwkUA+09Vg70Y/M5sE9DgD79++fTfKuQoAAAQIECBAgQGB6Avv27Zve4uteuccBoE+pdRP7QQIECBAgQIAAgZwCff67tgEg526UNQECBAgQIECAwNQF+vx37R4HgN27d0+9Gi5AgAABAgQIECBAYMoCfR5rexwA6rsATbkWlidAgAABAgQIECAwdYE+j7U9DgDbt2+fejVcgAABAgQIECBAgMCUBfo81vY4AGzZsmXKtbA8AQIECBAgQIAAgakL9Hms7fHDtuqHJky9Gi5AgAABAgQIECBAYPoCHX68VY/PAEy/EK5AgAABAgQIECBAIKmAASBp4aVNgAABAgQIECCQU8AAkLPusiZAgAABAgQIEEgqYABIWnhpEyBAgAABAgQI5BQwAOSsu6wJECBAgAABAgSSChgAkhZe2gQIECBAgAABAjkFDAA56y5rAgQIECBAgACBpAIGgKSFlzYBAgQIECBAgEBOAQNAzrrLmgABAgQIECBAIKmAASBp4aVNgAABAgQIECCQU8AAkLPusiZAgAABAgQIEEgqYABIWnhpEyBAgAABAgQI5BQwAOSsu6wJECBAgAABAgSSChgAkhZe2gQIECBAgAABAjkFDAA56y5rAgQIECBAgACBpAIGgKSFlzYBAgQIECBAgEBOAQNAzrrLmgABAgQIECBAIKmAASBp4aVNgAABAgQIECCQU8AAkLPusiZAgAABAgQIEEgqYABIWnhpEyBAgAABAgQI5BQwAOSsu6wJECBAgAABAgSSChgAkhZe2gQIECBAgAABAjkFDAA56y5rAgQIECBAgACBpAIGgKSFlzYBAgQIECBAgEBOAQNAzrrLmgABAgQIECBAIKmAASBp4aVNgAABAgQIECCQU8AAkLPusiZAgAABAgQIEEgqYABIWnhpEyBAgAABAgQI5BQwAOSsu6wJECBAgAABAgSSChgAkhZe2gQIECBAgAABAjkFDAA56y5rAgQIECBAgACBpAIGgKSFlzYBAgQIECBAgEBOAQNAzrrLmgABAgQIECBAIKmAASBp4aVNgAABAgQIECCQU8AAkLPusiZAgAABAgQIEEgqYABIWnhpEyBAgAABAgQI5BQwAOSsu6wJECBAgAABAgSSChgAkhZe2gQIECBAgAABAjkFDAA56y5rAgQIECBAgACBpAIGgKSFlzYBAgQIECBAgEBOAQNAzrrLmgABAgQIECBAIKmAASBp4aVNgAABAgQIECCQU8AAkLPusiZAgAABAgQIEEgqYABIWnhpEyBAgAABAgQI5BQwAOSsu6wJECBAgAABAgSSChgAkhZe2gQIECBAgAABAjkFDAA56y5rAgQIECBAgACBpAIGgKSFlzYBAgQIECBAgEBOAQNAzrrLmgABAgQIECBAIKmAASBp4aVNgAABAgQIECCQU8AAkLPusiZAgAABAgQIEEgqYABIWnhpEyBAgAABAgQI5BQwAOSsu6wJECBAgAABAgSSChgAkhZe2gQIECBAgAABAjkFDAA56y5rAgQIECBAgACBpAIGgKSFlzYBAgQIECBAgEBOAQNAzrrLmgABAgQIECBAIKmAASBp4aVNgAABAgQIECCQU8AAkLPusiZAgAABAgQIEEgqYABIWnhpEyBAgAABAgQI5BQwAOSsu6wJECBAgAABAgSSChgAkhZe2gQIECBAgAABAjkFDAA56y5rAgQIECBAgACBpAIGgKSFlzYBAgQIECBAgEBOAQNAzrrLmgABAgQIECBAIKmAASBp4aVNgAABAgQIECCQU8AAkLPusiZAgAABAgQIEEgqYABIWnhpEyBAgAABAgQI5BQwAOSsu6wJECBAgAABAgSSChgAkhZe2gQIECBAgAABAjkFDAA56y5rAgQIECBAgACBpAIGgKSFlzYBAgQIECBAgEBOAQNAzrrLmgABAgQIECBAIKmAASBp4aVNgAABAgQIECCQU8AAkLPusiZAgAABAgQIEEgqYABIWnhpEyBAgAABAgQI5BQwAOSsu6wJECBAgAABAgSSChgAkhZe2gQIECBAgAABAjkFDAA56y5rAgQIECBAgACBpAIGgKSFlzYBAgQIECBAgEBOAQNAzrrLmgABAgQIECBAIKmAASBp4aVNgAABAgQIECCQU8AAkLPusiZAgAABAgQIEEgqYABIWnhpEyBAgAABAgQI5BQwAOSsu6wJECBAgAABAgSSChgAkhZe2gQIECBAgAABAjkFDAA56y5rAgQIECBAgACBpAIGgKSFlzYBAgQIECBAgEBOAQNAzrrLmgABAgQIECBAIKmAASBp4aVNgAABAgQIECCQU8AAkLPusiZAgAABAgQIEEgqYABIWnhpEyBAgAABAgQI5BQwAOSsu6wJECBAgAABAgSSChgAkhZe2gQIECBAgAABAjkFDAA56y5rAgQIECBAgACBpAIGgKSFlzYBAgQIECBAgEBOAQNAzrrLmgABAgQIECBAIKmAASBp4aVNgAABAgQIECCQU8AAkLPusiZAgAABAgQIEEgqYABIWnhpEyBAgAABAgQI5BQwAOSsu6wJECBAgAABAgSSChgAkhZe2gQIECBAgAABAjkFDAA56y5rAgQIECBAgACBpAIGgKSFlzYBAgQIECBAgEBOAQNAzrrLmgABAgQIECBAIKmAASBp4aVNgAABAgQIECCQU8AAkLPusiZAgAABAgQIEEgqYABIWnhpEyBAgAABAgQI5BQwAOSsu6wJECBAgAABAgSSChgAkhZe2gQIECBAgAABAjkFDAA56y5rAgQIECBAgACBpAIGgKSFlzYBAgQIECBAgEBOAQNAzrrLmgABAgQIECBAIKmAASBp4aVNgAABAgQIECCQU8AAkLPusiZAgAABAgQIEEgqYABIWnhpEyBAgAABAgQI5BQwAOSsu6wJECBAgAABAgSSChgAkhZe2gQIECBAgAABAjkFDAA56y5rAgQIECBAgACBpAIGgKSFlzYBAgQIECBAgEBOAQNAzrrLmgABAgQIECBAIKmAASBp4aVNgAABAgQIECCQU8AAkLPusiZAgAABAgQIEEgqYABIWnhpEyBAgAABAgQI5BQwAOSsu6wJECBAgAABAgSSChgAkhZe2gQIECBAgAABAjkFDAA56y5rAgQIECBAgACBpAIGgKSFlzYBAgQIECBAgEBOAQNAzrrLmgABAgQIECBAIKmAASBp4aVNgAABAgQIECCQU8AAkLPusiZAgAABAgQIEEgqYABIWnhpEyBAgAABAgQI5BQwAOSsu6wJECBAgAABAgSSChgAkhZe2gQIECBAgAABAjkFDAA56y5rAgQIECBAgACBpAIGgKSFlzYBAgQIECBAgEBOAQNAzrrLmgABAgQIECBAIKmAASBp4aVNgAABAgQIECCQU8AAkLPusiZAgAABAgQIEEgqYABIWnhpEyBAgAABAgQI5BQwAOSsu6wJECBAgAABAgSSChgAkhZe2gQIECBAgAABAjkFDAA56y5rAgQIECBAgACBpAIGgKSFlzYBAgQIECBAgEBOAQNAzrrLmgABAgQIECBAIKmAASBp4aVNgAABAgQIECCQU8AAkLPusiZAgAABAgQIEEgqYABIWnhpEyBAgAABAgQI5BQwAOSsu6wJECBAgAABAgSSChgAkhZe2gQIECBAgAABAjkFDAA56y5rAgQIECBAgACBpAIGgKSFlzYBAgQIECBAgEBOAQNAzrrLmgABAgQIECBAIKmAASBp4aVNgAABAgQIECCQU8AAkLPusiZAgAABAgQIEEgqYABIWnhpEyBAgAABAgQI5BQwAOSsu6wJECBAgAABAgSSChgAkhZe2gQIECBAgAABAjkFDAA56y5rAgQIECBAgACBpAIGgKSFlzYBAgQIECBAgEBOAQNAzrrLmgABAgQIECBAIKmAASBp4aVNgAABAgQIECCQU8AAkLPusiZAgAABAgQIEEgqYABIWnhpEyBAgAABAgQI5BQwAOSsu6wJECBAgAABAgSSChgAkhZe2gQIECBAgAABAjkFDAA56y5rAgQIECBAgACBpAIGgKSFlzYBAgQIECBAgEBOAQNAzrrLmgABAgQIECBAIKmAASBp4aVNgAABAgQIECCQU8AAkLPusiZAgAABAgQIEEgqYABIWnhpEyBAgAABAgQI5BQwAOSsu6wJECBAgAABAgSSChgAkhZe2gQIECBAgAABAjkFDAA56y5rAgQIECBAgACBpAIGgKSFlzYBAgQIECBAgEBOAQNAzrrLmgABAgQIECBAIKmAASBp4aVNgAABAgQIECCQU8AAkLPusiZAgAABAgQIEEgqYABIWnhpEyBAgAABAgQI5BQwAOSsu6wJECBAgAABAgSSChgAkhZe2gQIECBAgAABAjkFDAA56y5rAgQIECBAgACBpAIGgKSFlzYBAgQIECBAgEBOAQNAzrrLmgABAgQIECBAIKmAASBp4aVNgAABAgQIECCQU8AAkLPusiZAgAABAgQIEEgqYABIWnhpEyBAgAABAgQI5BQwAOSsu6wJECBAgAABAgSSChgAkhZe2gQIECBAgAABAjkFehwAbt++nbMYsiZAgAABAgQIEBhJoM9jbY8DwK1bt0YqvFwIECBAgAABAgRyCvR5rO1xALh+/XrOLSJrAgQIECBAgACBkQT++9//dphOjwPA1atXO5QSEgECBAgQIECAAIGJBP7zn/9M9PjZPLjHAeDrr7+eTfKuQoAAAQIECBAgQGB6ApcvX57e4uteuccB4MKFC+vOxw8SIECAAAECBAgQ6ESgz2NtjwPAF1980UnNhEGAAAECBAgQIEBg3QIGgLXS9Sm11ug9jgABAgQIECBAgMCSQJ/H2k0dVmfnzp3ffvvtpk09xtYhl5AIECBAgAABAgQ6FLhz585TTz3V4dvb9PgSoMp0/vz5DqsoJAIECBAgQIAAAQJrFKgH2g5P/zX4HgeAGtZHH320RlkPI0CAAAECBAgQINChQLcHWgNAh7tFSAQIECBAgAABAuEFuh0AOn2d/bZt27755psdO3aEr7wECBAgQIAAAQIE8glcu3bt6aefvnHjRoepd/oMQMU6c+ZMh15CIkCAAAECBAgQIPBIgXqU7fP0XyPvdACokZ0+ffqRsh5AgAABAgQIECBAoEOBno+ynb4EqFaxvg3ol19+uXfv3g4rKiQCBAgQIECAAAECDxO4ePHic889V98G9GEPmO/9/T4DUMlOnjw5Xx1XJ0CAAAECBAgQIDCpQD3Ednv6r7n0+wxADW7r1q11ftq1a9ek6B5PgAABAgQIECBAYC4CV65cqa9huXnz5lyuvpaL9vsMQI2+wr399ttrScNjCBAgQIAAAQIECPQgUI+vPZ/+K1HXzwDU+Or7gX7++ecLCws9lFMMBAgQIECAAAECBFYRWFxcfOGFF7p9/5+7kXf9DEANsfKdOHFiFWXfIkCAAAECBAgQINCJQD24dn76r1C9DwA1xHPnzp09e7aTogqDAAECBAgQIECAwIoC9chaD64rfqurO3t/CdBdrD179nz22WePP/54V3aCIUCAAAECBAgQIHBX4Pvvv3/ppZcuXbrUP0iAZwAqYqU8fvx4/5oiJECAAAECBAgQyClQD6shTv+1OpujVOjf//73k08++dOf/jRKwOIkQIAAAQIECBBIInDq1Knf//73UZKN8RKgu5pbtmz55z//+fLLL0fBFScBAgQIECBAgMDwAp988snPf/7zW7duRck00gBQTZ944ol//etf9c2VoviKkwABAgQIECBAYGCB+ob1P/vZz7777rtAOQYbAKrsM888U8esZ599NpCyUAkQIECAAAECBMYT+Oqrr+qLUy5fvhwrtRi/BHy/aSV+9dVXK/f9d/o7AQIECBAgQIAAgVkK1ONoPZSGO/1XongDQA36woULddiqT7jMssauRYAAAQIECBAgQOCuQD2I1uNoPZRGBAk5AFToOmzVl1vV1wJFRBczAQIECBAgQIBAXIF6BK0H0Yj/9n/XPOoAUKOvv2xRf+G6vulS3N0jcgIECBAgQIAAgVgC9fBZj6Cxfut3mXC8XwJelkD98vDhw++9957PCX5Qxj0ECBAgQIAAAQIbJVA/67d+2tcHH3ywUQvOa53AzwDcI6tlqB+8fPbs2Xv3+AsBAgQIECBAgACBDRSoR8164Bzg9F9NRngG4F5pX3vttXfffXdhYeHePf5CgAABAgQIECBAoEVgcXHxxIkT586da1mkq58dagCostu2bXvzzTd/+9vf7tq1qytowRAgQIAAAQIECMQSuHLlyjvvvPOnP/3pxo0bsSJfPdrRBoC72W7duvXYsWNvvfXW3r17V8/fdwkQIECAAAECBAgsE7h48eLJkyfff//9mzdvLvvWAF+OOQDcLcymTZsOHjx49OjRI0eO7NixY4BqSYEAAQIECBAgQGB6AteuXTtz5szp06c//vjjO3fuTO9C81155AHgnmx9XdChQ4deWbq9+OKLdTC49y1/IUCAAAECBAgQyCxQD/rnz5//aOn24YcfDvZqnxUrm+4ovHPnzgMHDuzfv3/f0m337t31nu3bt2/ZsmXz5s0rGrmTAAECBAgQIEAgusDt27dv3bp1/fr1q1evfv311/VDfOvtiy+++PTTT+s90bMTPwECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQmL7Apulfoq8r7CzlQCn7lv7sL2V3KfWe7aVsKWVzX5GKJpLA7VJulXK9lKulXC7lwv/+fLp0T6RMIsaqqyNWrf+YdfWca6Sx51yAQS+vsf+/sCkGgG2lHCrllaU/L5aSIudBGzdcWndKOV/KR0t/PizlRrgEug1YV3dbmuED09VTLLHGniKupVcVSNfYIx+Ga24HSzlaypFSdqxadt8kMAOBa6WcKeV0KR+XUv9L47YeAV29HjU/MzUBXb0xtBp7YxytskECKRp7zAFgaynHSnmrlL0btBcsQ2ADBS6WcrKU90u5uYGLDr+Urh6+xKET1NXrLJ/GXiecH5uJwMiNPdoAUJ8+fKOU35WyayZbw0UIrFvgSilvl/Jnrwt6pKCufiSRB3QioKsnKITGngDLQ+cqMGZjDzUAvFbKu6UszHWbuDiBiQQWSzlRyrmJfibVg3V1qnKPkeyirn5kITX2I4k8oDeBxcEae5ABYE8pp0p5vbfdIh4CaxM4W8pvSrm0tgdneZSuzlLpQfPU1SsXVmOv7OLeIALjNPYIA8DhUt4r5fEge0eYBFYU+L6U46V8sOL3Et6pqxMWfbyUdfXymmrs5SK+DigwSGPHfu/7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AgQIhBEwAIQplUAJECBAgAABAgQItAsYANoNrUCAAAECBAgQIEAgjIABIEypBEqAAAECBAgQIECgXcAA0G5oBQIECBAgQIAAAQJhBAwAYUolUAIECBAgQIAAAQLtAgaAdkMrECBAgAABAgQIEAgjYAAIUyqBEiBAgAABAgQIEGgXMAC0G1qBAAECBAgQIECAQBgBA0CYUgmUAAECBAgQIECAQLuAAaDd0AoECBAgQIAAAQIEwggYAMKUSqAECBAgQIAAAQIE2gUMAO2GViBAgAABAgQIECAQRsAAEKZUAiVAgAABAgQIECDQLmAAaDe0AgECBAgQIECAAIEwAgaAMKUSKAECBAgQIECAAIF2AQNAu6EVCBAgQIAAAQIECIQRMACEKZVACRAgQIAAAQIECLQLGADaDa1AgAABAgQIECBAIIyAASBMqQRKgAABAgQIECBAoF3AANBuaAUCBAgQIECAAAECYQQMAGFKJVACBAgQIECAAAEC7QIGgHZDKxAgQIAAAQIECBAII2AACFMqgRIgQIAAAQIECBBoFzAAtBtagQABAgQIECBAgEAYAQNAmFIJlAABAgQIECBAgEC7gAGg3dAKBAgQIECAAAECBMIIGADClEqgBAgQIECAAAECBNoFDADthlYgQIAAAQIECBAgEEbAABCmVAIlQIAAAQIECBAg0C5gAGg3tAIBAgQIECBAgACBMAIGgDClEigBAgQIECBAgACBdgEDQLuhFQgQIECAAAECBAiEETAAhCmVQAkQIECAAAECBAi0CxgA2g2tQIAAAQIECBAgQCCMgAEgTKkESoAAAQIECBAgQKBdwADQbmgFAgQIECBAgAABAmEEDABhSiVQAgQIECBAgAABAu0CBoB2QysQIECAAAECBAgQCCNgAAhTKoESIECAAAECBAgQaBcwALQbWoEAAQIECBAgQIBAGAEDQJhSCZQAAQIECBAgQIBAu4ABoN3QCgQIECBAgAABAgTCCBgAwpRKoAQIECBAgAABAgTaBQwA7YZWIECAAAECBAgQIBBGwAAQplQCJUCAAAECBAgQINAuYABoN7QCAQIECBAgQIAAgTACBoAwpRIoAQIECBAgQIAAgXYBA0C7oRUIECBAgAABAgQIhBEwAIQplUAJECBAgAABAgQItAsYANoNrUCAAAECBAgQIEAgjIABIEypBEqAAAECBAgQIECgXcAA0G5oBQIECBAgQIAAAQJhBAwAYUolUAIECBAgQIAAAQLtAgaAdkMrECBAgAABAgQIEAgjYAAIUyqBEiBAgAABAgQIEGgXMAC0G1qBAAECBAgQIECAQBgBA0CYUgmUAAECBAgQIECAQLuAAaDd0AoECBAgQIAAAQIEwggYAMKUSqAECBAgQIAAAQIE2gUMAO2GViBAgAABAgQIECAQRsAAEKZUAiVAgAABAgQIECDQLmAAaDe0AgECBAgQIECAAIEwAgaAMKUSKAECBAgQIECAAIF2AQNAu6EVCBAgQIAAAQIECIQRMACEKZVACRAgQIAAAQIECLQLGADaDa1AgAABAgQIECBAIIyAASBMqQRKgAABAgQIECBAoF3AANBuaAUCBAgQIECAAAECYQQMAGFKJVACBAgQIECAAAEC7QIGgHZDKxAgQIAAAQIECBAII2AACFMqgRIgQIAAAQIECBBoFzAAtBtagQABAgQIECBAgEAYAQNAmFIJlAABAgQIECBAgEC7gAGg3dAKBAgQIECAAAECBMIIGADClEqgBAgQIECAAAECBNoFDADthlYgQIAAAQIECBAgEEbAABCmVAIlQIAAAQIECBAg0C5gAGg3tAIBAgQIECBAgACBMAIGgDClEigBAgQIECBAgACBdgEDQLuhFQgQIECAAAECBAiEETAAhCmVQAkQIECAAAECBAi0CxgA2g2tQIAAAQIECBAgQCCMgAEgTKkESoAAAQIECBAgQKBdwADQbmgFAgQIECBAgAABAmEEDABhSiVQAgQIECBAgAABAu0CBoB2QysQIECAAAECBAgQCCNgAAhTKoESIECAAAECBAgQaBcwALQbWoEAAQIECBAgQIBAGAEDQJhSCZQAAQIECBAgQIBAu4ABoN3QCgQIECBAgAABAgTCCBgAwpRKoAQIECBAgAABAgTaBQwA7YZWIECAAAECBAgQIBBGwAAQplQCJUCAAAECBAgQINAuYABoN7QCAQIECBAgQIAAgTACBoAwpRIoAQIECBAgQIAAgXYBA0C7oRUIECBAgAABAgQIhBEwAIQplUAJECBAgAABAgQItAsYANoNrUCAAAECBAgQIEAgjIABIEypBEqAAAECBAgQIECgXcAA0G5oBQIECBAgQIAAAQJhBAwAYUolUAIECBAgQIAAAQLtAgaAdkMrECBAgAABAgQIEAgjYAAIUyqBEiBAgAABAgQIEGgXMAC0G1qBAAECBAgQIECAQBgBA0CYUgmUAAECBAgQIECAQLuAAaDd0AoECBAgQIAAAQIEwggYAMKUSqAECBAgQIAAAQIE2gUMAO2GViBAgAABAgQIECAQRsAAEKZUAiVAgAABAgQIECDQLmAAaDe0AgECBAgQIECAAIEwAgaAMKUSKAECBAgQIECAAIF2AQNAu6EVCBAgQIAAAQIECIQRMACEKZVACRAgQIAAAQIECLQLGADaDa1AgAABAgQIECBAIIyAASBMqQRKgAABAgQIECBAoF3AANBuaAUCBAgQIECAAAECYQQMAGFKJVACBAgQIECAAAEC7QIGgHZDKxAgQIAAAQIECBAII2AACFMqgRIgQIAAAQIECBBoFzAAtBtagQABAgQIECBAgEAYAQNAmFIJlAABAgQIECBAgEC7gAGg3dAKBAgQIECAAAECBMIIGADClEqgBAgQIECAAAECBNoFDADthlYgQIAAAQIECBAgEEbAABCmVAIlQIAAAQIECBAg0C5gAGg3tAIBAgQIECBAgACBMAIGgDClEigBAgQIECBAgACBdgEDQLuhFQgQIECAAAECBAiEETAAhCmVQAkQIECAAAECBAi0CxgA2g2tQIAAAQIECBAgQCCMgAEgTKkESoAAAQIECBAgQKBdwADQbmgFAgQIECBAgAABAmEEDABhSiVQAgQIECBAgAABAu0CBoB2QysQIECAAAECBAgQCCNgAAhTKoESIECAAAECBAgQaBcwALQbWoEAAQIECBAgQIBAGAEDQJhSCZQAAQIECBAgQIBAu4ABoN3QCgQIECBAgAABAgTCCBgAwpRKoAQIECBAgAABAgTaBQwA7YZWIECAAAECBAgQIBBGwAAQplQCJUCAAAECBAgQINAuYABoN7QCAQIECBAgQIAAgTACBoAwpRIoAQIECBAgQIAAgXYBA0C7oRUIECBAgAABAgQIhBEwAIQplUAJECBAgAABAgQItAsYANoNrUCAAAECBAgQIEAgjIABIEypBEqAAAECBAgQIECgXcAA0G5oBQIECBAgQIAAAQJhBAwAYUolUAIECBAgQIAAAQLtAgaAdkMrECBAgAABAgQIEAgjYAAIUyqBEiBAgAABAgQIEGgXMAC0G1qBAAECBAgQIECAQBgBA0CYUgmU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7KB7V9irCIRv7Hi/BPxgNQ6X8p7PCX7QxT2hBOqHBx4v5YNQMU8xWF09RVxLz0pAVy+X1tjLRXwdUGCQxg78DMC9TVPPTC+Vcvbe1/5CIJpA3b11Dzv9/1A3Xf2Dhb/FFNDVK9RNY6+A4q5QAuM09gjPANzbOq+V8m4pC/e+9hcC3QsslnKilHPdxzm3AHX13OhdeL0Ci7r6kXQa+5FEHtCbwOJgjT3UAFA3y7ZS3izlt6Xs6m3niIfAjwWulPJOKX8q5caP7/fVcgFdvVzE170K6OoJKqOxJ8Dy0LkKjNnYow0Ad7fI1lKOlfJWKXvnumVcnMCKAhdLOVnK+6XcXPHb7lxRQFevyOLOTgR09ToLobHXCefHZiIwcmOPOQDc3RY1t4OlHC3lSCk7ZrJTXITAKgLXSjlTyulSPi7lziqP861VBHT1Kji+NXsBXb0x5hp7YxytskECKRp75AHg3j6oTzQeKuWVpT8vlpIi53vJ+8tcBepB/3wpHy39+dCrfTawFrp6AzEtNZGArp6Ia7IHa+zJvDx64wTSNXa6w/DOUg6Usr+UfUt/dpdS79leypZSNm/cPrJSNoHbpdwq5XopV0v5eunTL+sHYH5RyqdL92TTmHW+unrW4jmup6vnXGeNPecCDHp5jT1oYaVFgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgS1JakgAAABiUlEQVQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQGFHj++ecHzEpKBAgQIECAAAECBAg8IFAP/4/9+te/NgM8IOMOAgQIECBAgAABAqMJ1GN/Pfz/H7RIB/JbpiAZAAAAAElFTkSuQmCC
"""
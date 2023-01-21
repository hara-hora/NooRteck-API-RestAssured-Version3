Feature: Get One job information by id API

  @GetOneExJob
  Scenario Outline: Verify User able to retrieve specific job information
    Given User set <apiName> <region> webservice api
    Given User sets Query Parameters
      | id      |
      | <jobId> |
    When User sends GET request
    Then User validates status code <statusCode>
    And User validates response body field
      | job_id  | job_title | min_salary | max_salary |
      | <jobId> | <jobTit>  | <minSal>   | <maxSal>   |

    Examples: 
      | region  | apiName         | statusCode | jobId | jobTit    | minSal | maxSal |
      | "scrum" | "Job:GetOneJob" | "200"      | AB+   | Anne Teak |   1083 |   3171 |
